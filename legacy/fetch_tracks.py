#!/usr/bin/env python3
"""
Download course audio based on the <course>-meta.json feed from
https://lt-app-cdn.thinkingmethod.stream/.

For each course directory in this folder:
- Fetch <course>-meta.json.
- Derive the non-quality URL for each lesson (strip -hq/-lq).
- Download the mp3 into <course>/tracks/ with the numeric part padded to 3 digits
  (e.g., arabic1 -> arabic001.mp3, music18-2 -> music018-2.mp3).
- Write <course>/list.txt containing the ordered track paths (tracks/<filename>.mp3).

Usage:
  python fetch_tracks.py            # process all course directories found here
  python fetch_tracks.py spanish    # limit to specific courses
  python fetch_tracks.py --force    # re-download even if files exist
"""

import argparse
import concurrent.futures
import json
import os
import re
import shutil
from pathlib import Path
from urllib.error import HTTPError, URLError
from urllib.parse import urlsplit, urlunsplit
from urllib.request import urlopen


CDN_BASE = "https://lt-app-cdn.thinkingmethod.stream"


def find_courses(limit_to: list[str]) -> list[str]:
    root = Path.cwd()
    candidates = [p.name for p in root.iterdir() if p.is_dir() and not p.name.startswith(".")]
    if limit_to:
        missing = [c for c in limit_to if c not in candidates]
        if missing:
            raise SystemExit(f"Unknown course(s): {', '.join(missing)}")
        return limit_to
    return sorted(candidates)


def strip_quality(url: str) -> str:
    parsed = urlsplit(url)
    base = os.path.basename(parsed.path)
    root, ext = os.path.splitext(base)
    clean_root = re.sub(r"-(?:hq|lq)$", "", root)
    clean_path = parsed.path.replace(base, f"{clean_root}{ext}")
    return urlunsplit((parsed.scheme, parsed.netloc, clean_path, parsed.query, parsed.fragment))


def pad_track_name(stem: str) -> str:
    match = re.search(r"(.*?)(\d+)(.*)", stem)
    if not match:
        return stem
    prefix, number, suffix = match.groups()
    return f"{prefix}{int(number):03d}{suffix}"


def fetch_json(url: str) -> dict:
    try:
        with urlopen(url) as resp:
            return json.load(resp)
    except HTTPError as exc:
        raise SystemExit(f"HTTP error {exc.code} for {url}") from exc
    except URLError as exc:
        raise SystemExit(f"Network error fetching {url}: {exc}") from exc


def download_file(url: str, dest: Path, force: bool) -> None:
    dest.parent.mkdir(parents=True, exist_ok=True)
    if dest.exists() and not force:
        print(f"skip {dest} (exists)")
        return

    tmp_path = dest.with_suffix(dest.suffix + ".tmp")
    try:
        with urlopen(url) as resp, open(tmp_path, "wb") as fh:
            shutil.copyfileobj(resp, fh)
        tmp_path.replace(dest)
        print(f"saved {dest}")
    except HTTPError as exc:
        raise SystemExit(f"HTTP error {exc.code} downloading {url}") from exc
    except URLError as exc:
        raise SystemExit(f"Network error downloading {url}: {exc}") from exc
    finally:
        if tmp_path.exists():
            tmp_path.unlink(missing_ok=True)


def process_course(course: str, force: bool, workers: int) -> None:
    meta_url = f"{CDN_BASE}/{course}-meta.json"
    print(f"Fetching {meta_url}")
    meta = fetch_json(meta_url)
    lessons = meta.get("lessons", [])

    tracks_dir = Path(course) / "tracks"
    list_entries: list[str] = []
    downloads: list[tuple[str, Path]] = []

    for lesson in lessons:
        urls = lesson.get("urls", [])
        if not urls:
            print(f"warn: lesson {lesson.get('id')} has no urls")
            continue
        download_url = strip_quality(urls[0])
        stem = os.path.splitext(os.path.basename(download_url))[0]
        padded_stem = pad_track_name(stem)
        filename = f"{padded_stem}.mp3"
        dest = tracks_dir / filename

        downloads.append((download_url, dest))
        list_entries.append(filename)

    if downloads:
        with concurrent.futures.ThreadPoolExecutor(max_workers=workers) as executor:
            futures = [executor.submit(download_file, url, dest, force) for url, dest in downloads]
            for future in concurrent.futures.as_completed(futures):
                future.result()

    list_path = Path(course) / "list.txt"
    list_path.write_text("\n".join(list_entries) + ("\n" if list_entries else ""), encoding="utf-8")
    print(f"wrote {list_path}")


def main() -> None:
    parser = argparse.ArgumentParser(description="Download Language Transfer course audio.")
    parser.add_argument("courses", nargs="*", help="Courses to process (defaults to all in this directory)")
    parser.add_argument("--force", action="store_true", help="Re-download files even if they already exist")
    parser.add_argument("--workers", type=int, default=8, help="Concurrent downloads per course (default: 8)")
    args = parser.parse_args()

    courses = find_courses(args.courses)
    for course in courses:
        process_course(course, force=args.force, workers=max(1, args.workers))


if __name__ == "__main__":
    main()

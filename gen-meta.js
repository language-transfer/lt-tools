const fs = require('fs');
const path = require('path');
const child_process = require('child_process');

const URL_BASE = 'https://downloads.languagetransfer.org/';
// const URL_BASE = 'https://language-transfer.us-east-1.linodeobjects.com/';

const dir = process.argv[2];
const courseName = process.argv[3];

if (!dir || !courseName) {
	console.log('usage: node transcode.js path/ lang-name');
	process.exit(1);
}

const files = fs.readdirSync(dir).filter(fn => !fn.includes('-'));
files.sort((a, b) => {
	const lessonNumberA = a.match(/([0-9]+)/)[1];
	const lessonNumberB = b.match(/([0-9]+)/)[1];
	return parseInt(lessonNumberA, 10) - parseInt(lessonNumberB, 10);
});

const meta = {
	version: 9,
	lessons: [],
}

for (const file of files) {
	const filePath = path.join(dir, file);
	const lessonNumber = file.match(/([0-9]+)/)[1];

	const durationMatches = child_process.execSync(`ffprobe ${filePath} 2>&1`).toString().match('Duration: ([0-9]+):([0-9]{2}):([0-9]{2})\.([0-9]+)');
	const duration =
		(parseInt(durationMatches[1], 10) * 3600)
		+ (parseInt(durationMatches[2], 10) * 60)
		+ (parseInt(durationMatches[3], 10))
		+ (parseInt(durationMatches[4], 10) / (Math.pow(10, durationMatches[4].length)))

	const lesson = {
		id: file.replace(/\.mp3/, ''),
		title: 'Lesson ' + lessonNumber,
		urls: [
			`${URL_BASE}${courseName}${lessonNumber}-lq.mp3`,
			//`${URL_BASE}${courseName}/${courseName}${lessonNumber}-lq.mp3`,
			`${URL_BASE}${courseName}${lessonNumber}-hq.mp3`,
			//`${URL_BASE}${courseName}/${courseName}${lessonNumber}-hq.mp3`,
		],
		filesizes: {
			[`${URL_BASE}${courseName}${lessonNumber}-lq.mp3`]: fs.statSync(path.join(dir, courseName + lessonNumber + '-lq.mp3')).size,
			[`${URL_BASE}${courseName}${lessonNumber}-hq.mp3`]: fs.statSync(path.join(dir, courseName + lessonNumber + '-hq.mp3')).size,
		},
		duration,
	};

	meta.lessons.push(lesson);
	console.error(file);
}

console.log(JSON.stringify(meta));

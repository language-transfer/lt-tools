import fetch from 'node-fetch';
import { execSync } from 'child_process';
import fs from 'fs';
import tempy from 'tempy';

const COURSES = [
	'spanish',
	'arabic',
	'turkish',
	'german',
	'greek',
	'italian',
	'swahili',
	'french',
	'ingles',
	'music',
];

const versionMap = {};

const run = async () => {
	if (process.argv[2] === undefined) {
		console.error('Usage: node create-meta-versions.js <version> [should_upload]');
		return;
	}

	for (const course of COURSES) {
		const meta = await fetch('https://downloads.languagetransfer.org/' + course + '/' + course + '-meta.json').then(r => r.json());
		versionMap[course] = meta.version;
	}
	const outJSON = JSON.stringify({
		version: +process.argv[2],
		courseVersions: versionMap,
	});
	console.log(outJSON);
	if (process.argv[3]) {
		const fn = tempy.file({ name: 'course-versions.json' });
		fs.writeFileSync(fn, outJSON);
		execSync(`linode-cli obj put --acl-public ${fn} language-transfer`);
		console.log('uploaded course-versions.json');
	}
};

run();

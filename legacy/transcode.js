const fs = require('fs');
const path = require('path');
const child_process = require('child_process');

const dir = process.argv[2];
const courseName = process.argv[3];

if (!dir || !courseName) {
	console.log('usage: node transcode.js path/ lang-name');
	process.exit(1);
}

//const files = fs.readdirSync(dir);
const files = ['music20.mp3'];

for (const file of files) {
	const filePath = path.join(dir, file);
	const lessonNumber = file.match(/([0-9]+)/)[1];
	const stripped = lessonNumber.match(/^0*([0-9]+)/)[1];	// remove leading 0
	const newFilename = courseName + stripped + '.mp3';	// spanish1.mp3
	const newFilePath = path.join(dir, newFilename);
	fs.renameSync(filePath, newFilePath);

	// High-quality version for the app: remove metadata
	const highQFilename = courseName + stripped + '-hq.mp3';
	const highQFilePath = path.join(dir, highQFilename);
	child_process.execSync(`ffmpeg -i "${newFilePath}" -vn -codec:a copy -map_metadata -1 "${highQFilePath}"`);

	// Low-quality version for streaming: mono, lower vbr, remove metadata
	const lowQFilename = courseName + stripped + '-lq.mp3';
	const lowQFilePath = path.join(dir, lowQFilename);
	child_process.execSync(`ffmpeg -i ${newFilePath} -map 0:a -map_metadata -1 -codec:a libmp3lame -q:a 6 -ac 1 ${lowQFilePath}`);
}

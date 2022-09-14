const fs = require('fs');
const path = require('path');
const { execSync } = require('child_process');

const language = process.argv[2].toLowerCase();
const courseName = process.argv[3];
const lessonCount = parseInt(process.argv[4], 10);

if (!fs.existsSync(`${language}-prep`)) fs.mkdirSync(`${language}-prep`);
const digits = Math.floor(Math.log10(lessonCount)) + 1;
const tracks = [];
for (let i = 1; i <= lessonCount; i++) {
	const newFilename = `./${language}-prep/Language Transfer - ${courseName} - Lesson ${('' + i).padStart(digits, '0')}.mp3`;
	tracks.push(newFilename);
	fs.copyFileSync(`./${language}/${language}${i}.mp3`, newFilename);
	execSync(`id3v2 "${newFilename}" --track "${i}/${lessonCount}" --artist "Language Transfer" --album "${courseName}" --song "Lesson ${i}"`);
	console.log(i);
}

execSync(`cd ${language}-prep && zip ./${language}.zip ${tracks.map(s => `"${s.substring(`./${language}-prep/`.length)}"`).join(' ')}`);

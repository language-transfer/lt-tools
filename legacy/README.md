# lt-tools
Various tools used to upload and label files


To upload a new track:
```
copy into ~/language-transfer/audio/music (`musicXX.mp3`)
modify transcode.js
run node transcode.js music/ music
modify gen-meta.js (version bump)
node gen-meta.js music/ music
(node gen-meta.js music/ music > music-meta.json)
check the version number
linode-cli set-user LanguageTransfer
linode-cli obj put --acl-public music/musicXX.mp3 language-transfer
linode-cli obj put --acl-public music/musicXX-lq.mp3 language-transfer
linode-cli obj put --acl-public music/musicXX-hq.mp3 language-transfer
linode-cli obj put --acl-public music-meta.json language-transfer
check https://language-transfer.us-east-1.linodeobjects.com/music-meta.json
check links for episode
run node create-meta-versions.mjs <version> (no need to modify. do increment version number)
  additional 'true' arg uploads for you
check https://language-transfer.us-east-1.linodeobjects.com/course-versions.json
try it in the app
```

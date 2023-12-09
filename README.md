# whisper-mac
Try to set up a process that makes it easier to create a verbatim transcript of a recording

## Installation
```
brew install sox
brew install ffmpeg
```

## Usage

1. Split audio file into pieces (Optional)

this is because the audio file may be too large to upload to chatgpt api
```
./split_audio_mp3.sh <input-file> <how many pieces you want to slices>
```
2. Upload audio file to your chatgpt-api shortcuts
https://www.icloud.com/shortcuts/a80280b4e55c4956aebe7c37fd77891b
(put your own api key in the shortcut)

# whisper-mac
Try to set up a process that makes it easier to create a verbatim transcript of a recording

## Installation

0. Install sox and ffmpeg
```
brew install sox
brew install ffmpeg
```

1. Split audio file into pieces (Optional)

    This is because the audio file may be too large to upload to chatgpt api.
    Becuase the audio file is in .m4a format, we need to convert it to .mp3 which is supported by sox.
- Make the script executable: `chmod +x path/to/split_audio.sh.`
- Run the script with the path to your .m4a file and the number of desired segments as arguments:
```
./split_audio_mp3.sh <input-file> <how many pieces you want to slices>
```


2. Upload audio file to your chatgpt-api shortcuts
https://www.icloud.com/shortcuts/a80280b4e55c4956aebe7c37fd77891b
(put your own api key in the shortcut)

## Usage
1. Record your audio file with your phone or other devices. (I put it to my iCloud Drive)
2. Use the script to split the audio file into pieces (Optional)
3. Run the shortcut and get the transcript. Chose the audio file you want to transcript and wait for the result.
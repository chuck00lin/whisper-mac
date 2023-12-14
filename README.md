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


2. integrate with shortcuts
- shortcut that upload audio file to chatgpt-api
https://www.icloud.com/shortcuts/a80280b4e55c4956aebe7c37fd77891b
(put your own api key in the shortcut)
- shortcut that call the split_audio.sh
https://www.icloud.com/shortcuts/94028db355fd4d31b3d1ed07145161c8

## Usage
1. Record your audio file with your phone or other devices. (I put it to my iCloud Drive)
2. Use the script to split the audio file into pieces (Optional)
3. Run the shortcut and get the transcript. Chose the audio file you want to transcript and wait for the result.

---
- [Not solved] short cut to split audio file on menu bar is permisson denied (Can work in other space)
https://discussions.apple.com/thread/255210852?sortBy=best

- sox not found, because of the environment variable PATH of homebrew
https://www.reddit.com/r/shortcuts/comments/soes9k/shortcuts_on_mac_does_the_run_shell_script_action/

- passing varibales to AppleScript
https://stackoverflow.com/questions/75050616/passing-variables-from-apple-shortcuts-to-applescript-and-returning-the-result

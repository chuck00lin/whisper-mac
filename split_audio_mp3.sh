#!/bin/bash

# Check if two arguments are given
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <audio file path> <number of files>"
    exit 1
fi

# Assign arguments to variables
FILE_PATH="$1"
NUM_FILES="$2"

# Convert .m4a to .mp3 if necessary
EXT="${FILE_PATH##*.}"
if [ "$EXT" = "m4a" ]; then
    MP3_FILE="${FILE_PATH%.*}.mp3"
    ffmpeg -i "$FILE_PATH" -codec:a libmp3lame -qscale:a 2 "$MP3_FILE"
    FILE_PATH="$MP3_FILE"
fi

# Get the duration of the audio file
DURATION=$(soxi -D "$FILE_PATH")

# Calculate the duration of each segment
SEGMENT_DURATION=$(echo "$DURATION / $NUM_FILES" | bc -l)

# Split the audio file
for ((i=0; i<NUM_FILES; i++)); do
    START_TIME=$(echo "$i * $SEGMENT_DURATION" | bc -l)
    sox "$FILE_PATH" "segment_$i.mp3" trim "$START_TIME" "$SEGMENT_DURATION"
done


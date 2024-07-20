#!/bin/bash

# Define the root directory
ROOT_DIR="."

# Check if ImageMagick's `convert` command is available
if ! command -v convert &> /dev/null
then
    echo "ImageMagick (convert) could not be found. Please install it."
    exit 1
fi

# Find all .jpg files and reduce their size by 50%
find "$ROOT_DIR" -type f -name '*.jpg' | while read -r FILE; do
    # Backup the original file
    cp "$FILE" "$FILE.bak"
    
    # Reduce the image size by 50% using ImageMagick
    convert "$FILE" -resize 50% "$FILE.tmp" && mv "$FILE.tmp" "$FILE"
    
    # Optionally, remove the backup file
    # rm "$FILE.bak"

    echo "Processed: $FILE"
done

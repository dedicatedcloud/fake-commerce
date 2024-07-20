#!/bin/bash

# Find all files that contain _4460x4460 and end with .jpg
find . -type f -name '*_4460x4460*.jpg' | while IFS= read -r file; do
    # Get the directory and the base filename without _4460x4460
    dir=$(dirname "$file")
    base=$(basename "$file")

    # Replace _4460x4460 with an empty string
    newbase="${base//_4460x4460/}"

    # Construct the new filename
    newfile="${dir}/${newbase}"

    # Rename the file
    mv "$file" "$newfile"
done

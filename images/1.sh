#!/bin/bash

# Find all files that contain _4460x4460 and end with .jpg
find . -type f -name '*. *.jpg' | while IFS= read -r file; do
    # Get the directory and the base filename without _4460x4460 and the potential (1), (2), etc.
    dir=$(dirname "$file")
    base=$(basename "$file")

    # Replace _4460x4460 with an empty string and keep everything else
    newfile="${dir}/${base//_4460x4460/.}"

    # Rename the file
    mv "$file" "$newfile"
done

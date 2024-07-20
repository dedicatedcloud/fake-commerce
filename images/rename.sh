#!/bin/bash

# Find all files ending with _4460x4460.jpg
find . -type f -name '*_4460x4460(1).jpg' | while read file; do
    # Get the directory and the base filename without _4460x4460
    dir=$(dirname "$file")
    base=$(basename "$file")

    # Replace _4460x4460.jpg with .jpg
    newfile="${dir}/${base/_4460x4460(1).jpg/.jpg}"

    # Rename the file
    mv "$file" "$newfile"
done

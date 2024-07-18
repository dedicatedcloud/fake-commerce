#!/bin/bash

# Loop through each subdirectory
for dir in */; do
  # Create output directory inside the subdirectory
  mkdir -p "${dir}compressed"
  
  # Compress each image in the subdirectory
  for img in "${dir}"*.jpg; do
    if [ -f "$img" ]; then
      convert "$img" -quality 85 "${dir}compressed/$(basename "$img")"
    fi
  done
done


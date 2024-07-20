#!/bin/bash

# Define the root directory
ROOT_DIR="."

# Find and remove files with '(1).jpg' in their names
find "$ROOT_DIR" -type f -name '*\(1\).jpg' -exec rm -v {} \;

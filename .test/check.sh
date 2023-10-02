#!/bin/bash

file_path="../container.txt"  # Replace with the path to your file

if [ -s "$file_path" ]; then
  echo "File exists and is not empty"
  exit 0  # Exit with success code
else
  if [ -e "$file_path" ]; then
    echo "File exists but is empty"
  else
    echo "File does not exist"
  fi
  exit 1  # Exit with error code
fi


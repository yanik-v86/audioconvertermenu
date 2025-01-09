#!/bin/bash

if [ -z "$1" ]; then
  kdialog --error "No file selected." --title "Error"
  exit 1
fi

input_file="$1"

if [ ! -f "$input_file" ]; then
  kdialog --error "Input file not found." --title "Error"
  exit 1
fi

if ! command -v ffmpeg &> /dev/null; then
  kdialog --error "ffmpeg is not installed." --title "Error"
  exit 1
fi

output_file="${input_file%.*}.mp3"

if [ -f "$output_file" ]; then
  kdialog --sorry "File already converted." "The output file '$output_file' already exists."  --title "Sorry"
  exit 0
fi

ffmpeg -i "$input_file" "$output_file"
#2> >(kdialog --error "Conversion failed: $(cat)")
if [ $? -ne 0 ]; then
    exit 1
fi

kdialog --msgbox "Conversion completed successfully."  --title "Success"

exit 0

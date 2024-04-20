#!/bin/bash

# Check cli args
if [ $# -ne 1 ]; then
    echo "Usage: $0 <tex_file>"
    exit 1
fi

filename=$(basename "$1" .tex)
target_dir="everything_but_the_pdf_from_pdflatex"

if [ ! -d "$target_dir" ]; then
    mkdir -p "$target_dir"
fi

pdflatex "$1"

# move bitch get out the way
mv "$filename.aux" "$filename.log" "$target_dir/"

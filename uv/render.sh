#!/bin/bash
# WRC: 05/16/2026

# Check that at least one argument is provided
if [ $# -eq 0 ]; then
    printf "  ERROR :: 1 or more markdown files are required!\n"
    printf "    e.g. ./render.sh UV1.md\n"
    exit 1
fi

module load quarto
# Render each markdown file passed as an argument
printf "#Markdown files converted to pdf:%d\n\n" "$#"
for file in "$@" 
do
    quarto render "$file" --to pdf
done

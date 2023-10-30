#!/usr/bin/env bash

set -xe

mkdir -p out
pdflatex -output-directory out temp.tex
biber --input-directory=./out --output-directory=./out temp
pdflatex -output-directory out temp.tex
pdflatex -output-directory out temp.tex


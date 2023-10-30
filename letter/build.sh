#!/usr/bin/env bash

set -xe

mkdir -p out
pdflatex -output-directory out letter.tex


#!/usr/bin/env bash

set -xe

latexmk -bibtex -pdf -outdir=out "$@" article.tex


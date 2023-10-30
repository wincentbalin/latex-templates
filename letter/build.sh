#!/usr/bin/env bash

set -xe

latexmk -pdf -outdir=out "$@" letter.tex


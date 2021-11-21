#! /usr/bin/env bash

[[ -f "logo.png" ]] || \
    wget -q https://dataframes.juliadata.org/stable/assets/logo.png

printf "building file\n"

pandoc juliacheat.yaml -f markdown -t markdown --template juliacheat.tex \
    -o juliacheat_out.md && pandoc --pdf-engine=xelatex juliacheat_out.md \
    -o juliacheat_out.pdf

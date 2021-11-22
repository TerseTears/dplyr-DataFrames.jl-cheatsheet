#! /usr/bin/env bash

[[ -f "logo.png" ]] || \
    wget -q https://dataframes.juliadata.org/stable/assets/logo.png
[[ -f "Rlogo.png" ]] || \
    wget -q https://www.r-project.org/Rlogo.png
[[ -f "julia-logo-color.png" ]] || \
    wget -q https://raw.githubusercontent.com/JuliaLang/julia-logo-graphics/master/images/julia-logo-color.png

printf "building file\n"

pandoc juliacheat.yaml -f markdown -t markdown --template juliacheat.tex \
    -o juliacheat_out.md && pandoc --pdf-engine=xelatex juliacheat_out.md \
    -o juliacheat_out.pdf

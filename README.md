# A `dplyr` to `DataFrames.jl` Cheatsheet

A simple cheatsheet indicating how most of the commands in the `dplyr` [cheatsheet](https://github.com/rstudio/cheatsheets/blob/master/data-transformation.pdf), translate into a combination of `DataFrames.jl` and Julia commands. The aim here is to rely solely on the `DataFrames.jl` approach, there are however, adscititious packages such as [Chain.jl](https://github.com/jkrumbiegel/Chain.jl) and [DataFramesMeta](https://github.com/JuliaData/DataFramesMeta.jl) facilitating a more dplyr-like workflow. Consult the [DataFrames.jl](https://dataframes.juliadata.org/) documentation for further notes.

## Release and Building

Find the pdf release under the release tab. To build the cheatsheet, use the `build.sh` script.

## Further Information

If you need further information on some of the commands, I've written two blog posts while writing the cheatsheet which may be of help, [here](https://tersetears.github.io/posts/dplyr-dataframes/), and [here](https://tersetears.github.io/posts/dplyr-dataframes-part2/).

## A YAML Doc Approach

Each block of the cheatsheet is an element of a yaml doc that are then put together using `Pandoc`'s template capabilities (as seen in the `juliacheat.tex` template). The elements of the yaml doc are written in markdown format and so a first pass translating from this document to a markdown document is performed. Afterwards, the said markdown document is translated into the latex cheatsheet pdf using `Pandoc`.

This is to allow for easy contribution. One needs to simply add elements to the yaml doc, which is quite human-readable, or modify existing elements.

## TODO

- [] Write automatic tests for checking if commands run, thus keeping the cheatsheet updated in case of API changes (should be easy. Just extract the relevant yaml part, and run with `julia` started with the necessary packages and check which lines fail).

- [] See if `DataFramesMeta` can also be fully translated into the `dplyr` commands and write the respective yaml section (should use two-column cheatsheet then for the content to appear properly).

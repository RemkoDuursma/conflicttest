# Almere Parking Project

## Info

This is an example project, demonstrating how to organize code / data / inputs and outputs in a logical folder structure. It also contains an example with `drake` - a workflow manager.

## Data

The project contains an analysis of the number of parked cars on a selection of parking lots in Almere Stad Centrum. The data was obtained by writing a web scraper (not included) over a period of ca. 10 months in 2019.

## Instructions

You can run the entire project with the script `main.R`. You need a few packages, see `R/load_packages.R`.

Because `main.R` writes an `rmarkdown` document (output: HTML), it is easiest to run this project in Rstudio, otherwise you need an installation of Pandoc on your system.

All outputs are written to `output/data` and `output/figures`.

## Author

Remko Duursma <remkoduursma@gmail.com>



# Load packages
source("R/load_packages.R")

# Load custom functions
source("R/functions_figures.R")
source("R/functions_read_data.R")
source("R/functions_clean_and_prepare_data.R")
source("R/functions_modelling.R")
source("R/utils.R")

# Make output, cache directories if needed.
source("R/make_dirs.R")

# 1. Read raw data
parking_raw <- read_parking_raw()
parking_map <- read_parking_map_data()


# 2. Process raw data

# Original data, cleaned
park <- clean_parking_raw(parking_raw, calibrate = FALSE)

# Calibration step
park_gr <- clean_parking_raw(parking_raw, calibrate = TRUE)

# Aggregated to hourly timesteps.
park_hr <- aggregate_parking(park_gr)




# 4. Rapport met figuren
rmarkdown::render("Rmd/almereparking_figures.Rmd", output_dir = "output/figures")







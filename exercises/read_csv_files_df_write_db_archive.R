# code that reads in all csv files of a given type (s, b, p) 
# into a single dataframe per type, writes each to database, and then moves
# processed data files to an archive folder

# uses here package to orient to the top-level directory, 
# expects files are in data folder and file structure includes archive
# folders, which are where processed data files are moved by type

# load necessary packages
library(tidyverse)
library(fs)
library(DBI)
library(RSQLite)
library(janitor)

# set working directory
setwd("/Users/SHaymond/Documents/MSACL2023_R") # users to modify

# read multiple csv files into single dataframe by type
batch_file <- dir_ls("data", glob = "*_b.csv") %>%
  map_dfr(read_csv) %>%
  clean_names()

sample_file <- dir_ls("data", glob = "*_s.csv") %>%
  map_dfr(read_csv) %>%
  clean_names()

peak_file <- dir_ls("data", glob = "*_p.csv") %>%
  map_dfr(read_csv) %>%
  clean_names()

# initialize database connection
projectdb <- dbConnect(RSQLite::SQLite(), "project_data.sqlite")

# write data to tables
dbWriteTable(projectdb, "batch", batch_file)
dbWriteTable(projectdb, "sample", sample_file)
dbWriteTable(projectdb, "peak", peak_file)

# disconnect from database
dbDisconnect(projectdb)

# move processed files to archive folders
dir_ls("data", glob = "*_b.csv") %>%
  map(file_move(path = ., new_path = "data/batch_archive/."))

dir_ls(path = "data", glob = "*_s.csv") %>%
  map(file_move(path = ., new_path = "data/sample_archive/."))

dir_ls("data", glob = "*_p.csv") %>%
  map(file_move(path = ., new_path = "data/peak_archive/."))


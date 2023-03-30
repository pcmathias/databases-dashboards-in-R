library(fs)

setwd("modify to your filepath")

# must have created_files directory setup
file_create(paste0("data/created_files/sched_test_",
                   format(Sys.time(), "%d-%b-%Y %H.%M"), ".txt"))




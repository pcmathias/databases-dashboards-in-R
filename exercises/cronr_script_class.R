library(cronR)

setwd("modify to your filepath")
test_task <- file.path(getwd(),"basic_job_file_create.R")

cmd <- cron_rscript(test_task)
cron_add(command = cmd, frequency = "minutely", 
         id = "file-create", description = "test to create files",
         at = format(Sys.time(), "%H:%M:%S"))

# cron_rm("file-create")



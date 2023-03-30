library(taskscheduleR)

setwd("modify to your filepath")
test_task <- file.path(getwd(),"basic_job_file_create.R")

taskscheduler_create(taskname = "file-create", 
                     rscript = test_task,
                     schedule = "MINUTE", 
                     starttime = format(Sys.time(), "%H:%M:%S"), 
                     startdate = format(Sys.Date(), "%m/%d/%Y"),
                     days = 31)

#taskscheduler_stop("file-create")
#taskscheduler_delete("file-create")


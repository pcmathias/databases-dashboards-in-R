# Flexing with R: Databases to Dashboards

This course covers basic concepts on relational databases, parsing files, dashboards, and interactive visualizations using the R programming language.

## Pre-course work/requirements

- A laptop or workstation with access to the internet, and the ability to download files is required
- Complete the following survey so we can better understand your R experience and what you want out of the course: [MSACL Intermediate R Pre-Course Survey](https://forms.gle/YLNtND5ZCjwYFWiV6)
- You are welcome to continue using whatever version of R and RStudio you already have on your computer, but you may run into issues running old versions. Our recommendation (if it won't disrupt your working R environment too much):
  - Install the latest version of R by choosing the closest CRAN mirror here at https://cran.r-project.org/mirrors.html and downloading the version for your operating system
  - If you don't already have a recent version, install the latest version of RStudio Desktop at https://www.rstudio.com/products/rstudio/download/#download 
- Open RStudio and confirm you are able to install packages by running `install.packages("tidyverse", dependencies = TRUE)`
- In addition to the tidyverse set of packages, install additional packages with the following command: `install.packages(c("fs", "janitor", "DBI", "RSQLite", "plotly", "flexdashboard", "DT", "kable"), dependencies = TRUE)`. 
  - If you are running a Windows operating system, install taskscheduleR by running `install.packages("taskscheduleR", dependencies = TRUE)`. 
  - If you are running a Mac or Linux operating system, install cronR by running `install.packages("cronR", dependencies = TRUE)`.
- Optional: If you would like to generate pdf reports with R Markdown and do not already have LaTeX installed on your computer, run `install.packages("tinytex", dependencies = TRUE)`. Then run the following from the RStudio console to install TinyTeX: `tinytex::install_tinytex()`. Note that you may get error messages when installing on Windows that are OK to click through.

## Accessing/interacting with the course content

There are multiple ways to access and interact with the course content. 

1. Download this github repository as a zip file and install it on your computer (e.g. C:\Users\jdoe\Desktop\Projects\databases-dashboards-in-R\).
1. Use git functionality in RStudio by creating a project from version control that is "cloned" from the class repository. This is an option if you have some familiarity with Git. Create a new project (File menu -> New Project), select "Version Control" then "Git" and enter the URL for the course repository when prompted. This will clone the contents from the repo into the directory you specify.
1. You can refer to this website and copy and paste content as the course goes long.

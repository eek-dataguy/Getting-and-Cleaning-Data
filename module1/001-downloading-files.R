getwd()

setwd("/workspaces/Getting-and-Cleaning-Data/module1")

getwd()

setwd("/workspaces/Getting-and-Cleaning-Data/")
getwd()

if (!file.exists("data")) {
  dir.create("data")
}

file_url = "https://data.lacity.org/api/views/d5tf-ez2w/rows.csv?accessType=DOWNLOAD"  # nolint
download.file(file_url, destfile = "./data/traffic.csv", method = "curl")

downloaded_date <- date()
downloaded_date
mypack <- function(package){
  new.package <- package[!(package %in% installed.packages()[, "Package"])]
  if (length(new.package)) 
    install.packages(new.package, dependencies = TRUE)
  sapply(package, require, character.only = TRUE)
}

#create a vector of most used R packages
packages <- c("dplyr", "tidyr", "readr", "stringr", "broom", "purrr", "readr", "reshape2", "lubridate", 
              "RColorBrewer", "scales", "grid", "rmarkdown", "shiny", 
              "DT", "sqldf", "data.table", "RODBC", "RPostgreSQL", "RSQLite", 
              "XLConnect", "xlsx", "Rcpp", "XML", "jsonlite",
              "fivethirtyeight", "plotly", "highcharter", "leaflet", "threejs",
              "ggplot2", "ggrepel", "ggvis", "rgl", "googleVis", 
              "sp", "maptools", "rgdal", "maps", "ggmap", "countrycode", "viridisLite",
              "zoo", "xts", "dygraphs",
              "car","lme4", "randomForest", "multcomp", "vcd", "glmnet", "caret",
              "prophet")

mypack(packages)
library(dplyr)
library(readr)
library (magick)
library(rcrossref) ## getting year published from doi
library(pander) ## creating reports
source("functions.r")
library (knitr)

#blogdown::new_site(theme="aerohub/hugrid", hostname = "github.com") #used to create the website,kept for reference
## give here url of publication where the copyrights issues were not cleared.
problematicpubli= c("https://doi.org/10.1111/ejn.14267")

shiny::runApp("shiny_addfigure.r")
source (file ="hallcreator.R")
blogdown::serve_site()

blogdown::hugo_build()

blogdown::hugo_cmd("--config config.toml,config_pub.toml") #bulid dat version

##setwd("website-cards")
#blogdown::new_site(theme="bul-ikana/hugo-cards", hostname = "github.com")
#blogdown::serve_site()


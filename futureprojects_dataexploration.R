#future potential projects/questions that can be answered using Dan Katz's dissertation data
#the various potential projects include:
#how does growth vary across range edges?




#set up work environment
library(ggplot2)
library(lubridate)
library(dplyr)

##########
rm(list = ls())


#load data  #available for download at http://datadryad.org/resource/doi:10.5061/dryad.1b433
setwd("Q:/Ibanez Lab/Dan Katz/DISSERTATION/Dryad repository")  
seedling <- read.csv("seedling data.csv")

names(seedling)


######################################################
#how does growth vary across range edges?
######################################################

#height
group_by(seedling, seed_id) %>%
  filter(!is.na(height)) %>%
  ggplot(aes(x = age_days, y = height, group = seed_id, color = mig_stat)) + geom_point(size = 0.5, alpha = 0.5) + geom_line(alpha = 0.5) + 
  facet_grid(site_label ~ sp) + theme_bw() + xlab("age (days)") + ylab("height (mm)")

#diameter
group_by(seedling, seed_id) %>%
  filter(!is.na(height)) %>%
  ggplot(aes(x = age_days, y = diameter, group = seed_id, color = mig_stat)) + geom_point(size = 0.5, alpha = 0.5) + geom_line(alpha = 0.5) + 
  facet_grid(site_label ~ sp) + theme_bw() + xlab("age (days)") + ylab("diameter (mm)")



######################################################
#how does herbivory affect growth?
######################################################




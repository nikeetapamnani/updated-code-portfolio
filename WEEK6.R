library(nycflights13)

library(tidyverse)

library(gapminder)
library(dplyr)

FlightsOn30Dec <- filter(flights, flights$month == "12" & flights$day == "30")

sum(is.na(FlightsOn30Dec$dep_delay))  

meanOfDepDelays <- mean(FlightsOn30Dec$dep_delay, na.rm = TRUE)
meanOfDepDelays



income <- read.csv("income.csv")

summary(income)

mean(income$M_weekly, na.rm = TRUE)

mean(income$M_weekly, trim = 0.1, na.rm = TRUE)

median(income$M_weekly, na.rm = TRUE)

library("matrixStats")

weightedMedian(income$M_weekly, w = income$Industry)

weightedMedian(income$M_weekly, w = income$Industry, na.rm = TRUE)

weightedMean(income$M_weekly, w = income$Industry, na.rm = TRUE)

weighted_median <- function(x, w, ..., na.rm = FALSE){
  
  if(na.rm){
    
    df_omit <- na.omit(data.frame(x, w))
    
    return(weightedMedian(df_omit$x, df_omit$w))
    
  } 
  
  weightedMedian(x, w, ...)
  
}

weighted_median(income$M_weekly, w = income$Industry, na.rm = TRUE)

weightedMedian(income[["M_weekly"]], w=income[["Industry"]], na.rm = TRUE)

sd(income$F_workers)

IQR(income$F_workers)

mad(income$F_workers)


library(dplyr)
library(tibble)

income <- as.tibble(income)

MaleIncomeGtr2000 <- filter(income, income$M_weekly > 2000)

income <- mutate(income, diff = income$M_weekly - income$F_weekly)
income %>% glimpse()

sd_diff <- sd(income$diff, na.rm = TRUE)
round(sd_diff,2)



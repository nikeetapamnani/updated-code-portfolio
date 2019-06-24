
library("tidyverse")

information <- read_csv("1,Tom,23,3.4,1,1988/08/28
         2,Dan,30,3.6,0,1990-07-20
         3,Sam,27,3.8,0,1988-07-19
         4,Bill,33,4.0,1,1988-Nov-02", col_names = c("No","Name","age","GPA","Resident","DOB"))

head(information)

information$Name[parse_logical(information$Resident) == 1]

parse_factor(c("Tom","Bill","Ron","Casey"), levels = information$Name)

information$DOB <- parse_date(information$DOB)

#problems function will list the record that fails the parsed field
problems(information$DOB)

head(information)

guess_encoding(charToRaw(information$Name))



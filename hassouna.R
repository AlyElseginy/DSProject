#loads the libraries needed
library(readxl)
library(dplyr)

#reads the excel file given
data <- read.csv("grc.csv", stringsAsFactors = T)

#calculates the total cost by age
tot_by_age <- data %>% 
  group_by(age) %>%
  summarize(total = sum(total, na.rm = T)) #na.rm = T removes null values

#prints the result
print(tot_by_age)

#calculates the total cost by payment type (cash, credit)
tot_by_pay_type <- data %>% 
  group_by(paymentType) %>%
  summarize(total = sum(total, na.rm = T))

#prints the result
print(tot_by_pay_type)
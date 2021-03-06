
# Deliverable 1

# Use the library() function to load the dplyr package.
library(tidyverse)
library(dplyr)

# import mechacar_mpg.csv as a dataframe 
mechacar_mpg <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
head(mechacar_mpg)

# Perform linear regression using the lm() function and all six variables and add dataframe as data parameter
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar_mpg)

# Using the summary() function, determine the p-value and the r-squared value for the linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar_mpg))

# Deliverable 2 
# Read csv 
susp_coil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F) 
head(susp_coil)

# total_summary dataframe 
total_summary <- susp_coil %>% summarize(Mean=mean(PSI),Median=median(PSI), Variance=var(PSI),SD=sd(PSI))

# lot_summary dataframe
lot_summary <- susp_coil  %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI),.groups = 'keep') 
View(lot_summary)

# t-test 
t.test(x=susp_coil$PSI, mu=1500)

#t-test for each Lot 
lot1 <- subset(susp_coil, Manufacturing_Lot=='Lot1')
t.test(x=lot1$PSI, mu=1500)

lot2 <- subset(susp_coil, Manufacturing_Lot=='Lot2')
t.test(x=lot2$PSI, mu=1500)

lot3 <- subset(susp_coil, Manufacturing_Lot=='Lot3')
t.test(x=lot3$PSI, mu=1500)




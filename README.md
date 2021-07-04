# MechaCar Statistical Analysis Using R


## Linear Regression to Predict MPG 

![](https://github.com/madihajaved/MechaCar_Statistical_Analysis-/blob/main/Deliverable%201.png)

The linear regression has a 71% R-squared value with a p-value less than 0.05% showing that the linear model does predict mpg of MechaCar prototypes effectively. 

The linear regression shows that the vehicle_length and ground_clearance are significant, thus providing a non-random amount of variance to mpg values in the dataset. 
The slope of the model is not zero given none of the coefficients are zero.

## Summary Statistics on Suspension Coils
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. According to the Total Summary, variance of PSI is 62.29 PSI which falls within the acceptable limit of 100 PSI.

![](https://github.com/madihajaved/MechaCar_Statistical_Analysis-/blob/main/Deliverable%202a.png)

However, delving deeper into the data shows that two out of three lots meet the limit while the last lot (Lot 3) has a variance of 170 which exceeds the limit.

![](https://github.com/madihajaved/MechaCar_Statistical_Analysis-/blob/main/Deliverable%202b.png)

## T-Tests on Suspension Coils
The result of the t-test showed that the mean of sample was 1498.78 with a p-value of 0.06. This is not enough to reject the null hypothesis, therefore, we can conclude that the population mean is 1500.

For Lot 1 and Lot 2, t-tests showed p-value greater than 0.05 so the null hypothesis cannot be rejected in both cases and we can conclude population mean is 1500. However, for Lot 3, the p-value is 0.0417, showing we should reject the null hypothesis. We can conclude that the sample mean and population mean are statistically different (and not equal to 1500). 

![](https://github.com/madihajaved/MechaCar_Statistical_Analysis-/blob/main/Deliverable%203.png)


## Study Design: MechaCar vs Competition
One additional study that can be done is to compare maintenance cost of MechaCar vs competition. 
A linear regression model can be run to see which factors drive maintenance costs - for instance, mileage, city vs highway distance covered, vehicle length, vehicle weight etc. 
Once we have a model which explains factors which contribute to maintenance costs, we can compare maintenance costs across different car models using t-test where one group will be MechaCar and the other group can be competition. The null hypothesis would be that the maintenance costs for both groups is same i.e. the difference in cost is zero while the alternative hypothesis will be that the maintenance cost of MechaCar is not equal to maintenance cost of competition. 





#Reading the CSV File
data = read.csv("bp.csv")
#Drawing the side by side Box Plot for Arm Method vs Finger Method
boxplot(data, main = "Arm Method vs Finger Method", ylab = "Systolic Blood Pressure (mmHg)", range = 0, yaxt = 'n')
axis(2, at=seq(50,230,20), las = 2)
#5 Point summary of the boxplots in both the cases
boxplot.stats(data[[1]])
boxplot.stats(data[[2]])
#Drawing the Histogram for the Arm Method
hist(data[[1]],xlab = "Systolic Blood Pressure (mmHg)", main = "Arm Method", xaxt = 'n', las = 2)
axis(1, at=seq(60,220,20), las = 1)
#Drawing the Histogram for the Finger Method
hist(data[[2]],xlab = "Systolic Blood Pressure (mmHg)", main = "Finger Method", xaxt = 'n', las = 2)
axis(1, at=seq(60,240,20), las = 1)
#Drawing the QQ Plot for the Arm Method
qqnorm(data[[1]], main = "Normal Q-Q Plot (Arm Method)", xaxt = 'n', las = 2)
axis(1, las = 1)
qqline(data[[1]])
#Drawing the QQ Plot for the Finger Method
qqnorm(data[[2]], main = "Normal Q-Q Plot (Finger Method)", yaxt = 'n')
axis(2, at=seq(50,230,20), las = 2)
qqline(data[[2]])
#Drawing the QQ Plot for the Difference
qqnorm(data[[3]], main = "Normal Q-Q Plot (Difference)", xaxt = 'n', las = 2)
axis(1, las = 1)
qqline(data[[3]])
#Calculating Mean, SD, Median for Arm Method
mean(data[[1]])
sd(data[[1]])
median(data[[1]])
#Calculating Mean, SD, Median for Finger Method
mean(data[[2]])
sd(data[[2]])
median(data[[2]])
#Calculating Mean, Variance, SD, Median for the Difference
mean(data[[3]])
var(data[[3]])
sd(data[[3]])
median(data[[3]])



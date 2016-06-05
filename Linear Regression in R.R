
# Beginning Linear Regression ---------------------------------------------

#Load our libraries
library(MASS)
library(ISLR)

#find the Boston data set
fix(Boston)

#look at the names
names(Boston)

#Attach the dataset so that we can save some programming
attach(Boston)

#Run an initial linear regression
lm.fit=lm(medv~lstat)

#get the summary
summary(lm.fit)

#We can see what is in the summary
names(lm.fit)

#finding the confidence intervals
confint(lm.fit)

#confidence intervals for a given value of the predictor
predict(lm.fit, data.frame(lstat=(c(5,10,15))),
        interval="confidence")

#prediction intervals for a given value of the predictor
predict(lm.fit, data.frame(lstat=(c(5,10,15))),
        interval="prediction")

#scatter plot of predictor and response. This can help us
#check the linearity assumption
plot(lstat, medv)

#now we can check our regression line
abline(lm.fit)

#and let's customize this plot with some beautification
#increased line width
abline(lm.fit, lwd=3)

#thicker line and red color
abline(lm.fit, lwd=3, col="red")

#scatter plot with a different color
plot(lstat, medv, col="red")

#different plotting symbols
plot(lstat, medv, pch=20)
plot(lstat, medv, pch="+")

#this tells us all of the plotting symbols available to us
plot(1:20, 1:20, pch=1:20)

#the par function allows us to panel our plots so that we
#can see all of them together
par(mfrow=c(2,2))

#then we can apply the plot function to be able to look at 
#the diagnostic plots that come with the regression output
plot(lm.fit)

#now let's look at the standardized residuals
par(mfrow=c(1,1))
plot(predict(lm.fit), residuals(lm.fit))
plot(predict(lm.fit), rstudent(lm.fit))

#let's look at the leverage statistic
plot(hatvalues(lm.fit))

#and let's find out which observation has the largest
#leverage statistic
which.max(hatvalues(lm.fit))
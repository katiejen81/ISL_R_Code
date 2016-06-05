
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
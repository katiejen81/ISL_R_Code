

# Chapter 2 R Lab ---------------------------------------------------------


# Get required packages
install.packages("ISLR")

#Activate Packages
library(ISLR)
library(MASS)

#Sampling with a Vector
x <- c(1,6,2)
x
y = c(1,4,3)
y

#length tells us the length of a vector
length(x)
length(y)

#and we can add two vectors together
x+y

#ls lets you look at a list of all of your objects
ls()

#the rm function lets us remove what we don't want
rm(x,y)
ls()

#matrix function let's us create a matrix
?matrix

x <- matrix(data=c(1,2,3,4), nrow=2, ncol=2)
x

#the square root function can be used with this matrix
sqrt(x)

#getting random numbers
x <- rnorm(50)
y <- x + rnorm(50, mean=50, sd=.1)
cor(x,y)

#we can also set a seed to help us get reproducable results
set.seed(2016)
rnorm(50)
rnorm(50)

#looking at what the working directory is and making changes
getwd()
setwd("/home/katie/R/x86_64-pc-linux-gnu-library/3.2/ISLR_practice/")

#I don't want that working directory. Let's change it

#how to bring data in
Auto <- read.csv("Auto.csv", header=T, na.strings="?")

#let's learn more about this data
dim(Auto)
#this tells us how many observations and columns that we have

#if we do some statistical analysis, we don't want missing data
Auto <- na.omit(Auto)

#names can give us the variable names that are in the dataset
names(Auto)
#of course we can assign those names to an object and use them
#in a formula!

#now let's do something with the data that we imported
attach(Auto)
plot(cylinders, mpg)

#if we want to change a variable type from continuous
#to discrete, we make it as.factor
cylinders=as.factor(cylinders)

#categorical or ordinal data will now plot by default into a
#boxplot

plot(cylinders, mpg)

#we can also add some color and add other things
plot(cylinders, mpg, col="red")
plot(cylinders, mpg, col="red", varwidth=T, horizontal=T)
plot(cylinders, mpg, col="red", varwidth=T, xlab="Cylinders"
     , ylab="MPG")

#hist is the histogram function
hist(mpg)
hist(mpg
      , col=2)
hist(mpg
     , col=2
     , breaks=15)

#pairs is the scatterplot matrix function
pairs(Auto)
pairs(~mpg + displacement + horsepower + weight + acceleration
      , Auto)
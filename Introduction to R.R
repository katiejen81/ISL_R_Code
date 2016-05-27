
# ISLR Practice Code ------------------------------------------------------

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

#looking at what the working directory is
getwd()

#I don't want that working directory. Let's change it

#how to bring data in
Auto <- read.csv("Auto.csv", header=T, na.strings="?")
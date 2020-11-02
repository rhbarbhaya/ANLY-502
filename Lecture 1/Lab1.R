# Name: Rushabh Barbhaya
# ID: 287472

# Download the dataset for Lab1A
# source("http://www.openintro.org/stat/data/arbuthnot.R")
library(dplyr)
library(ggplot2)
library(statsr)
data(arbuthnot)

# Questions to the datasets
str(arbuthnot)     #Overall structure of the dataset
names(arbuthnot)   #Column names
dim(arbuthnot)     #Dimension of the dataset
summary(arbuthnot) #Desciption of the data

# Get total of the population
arbuthnot$total = arbuthnot$boys + arbuthnot$girls
str(arbuthnot$total) # Checking if all the recods are accounted for

# Saving some typing
boys_label = "Count of Boys"
girls_label = "Count of Girls"
total_label = "Total Count"
year = "Year"
x = arbuthnot$year
y1 = arbuthnot$boys
y2 = arbuthnot$girls
y = arbuthnot$total

# Graph for years vs girls
plot(x, y2, type = "l", col = "red", xlab = year, ylab = girls_label, lty = 1)
legend("topleft", legend = girls_label, col = "red", lty = 1, title = "Legend", cex = 0.7)

# Graph for years vs boys
plot(x, y1, type = "l", col = "blue", xlab = year, ylab = boys_label, lty = 1)
legend("topleft", legend = boys_label, col = "blue", lty = 1, title = "Legend", cex = 0.7)

# Graph for years vs total
plot(x, y, type = "l", col = "black", xlab = year, ylab = total_label, lty = 1)
legend("topleft", legend = total_label, col = "black", lty = 1, title = "Legend", cex = 0.7)

# Graph for years x population
plot(x, y, type = "l", col = "black", xlab = year, ylab = total_label, ylim = c(2000,16000))
lines(x, y2, type = "l", col = "red", xlab = year, ylab = girls_label)
lines(x, y1, type = "l", col = "blue", xlab = year, ylab = boys_label)
legend("topleft", legend = c(total_label, girls_label, boys_label), lty = 1, col = c("black", "red", "blue"), title = "Legend", cex = 0.6)
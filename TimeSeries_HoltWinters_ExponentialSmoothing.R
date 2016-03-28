library(forecast)

cola1 <- scan("http://robjhyndman.com/tsdldata/data/fancy.dat")

cola1

class(cola1)

cola2 <- ts(cola1, frequency = 12, start = c(1987,1))

class(cola2)

cola2

plot.ts(cola2)

logcola2 <- log(cola2)

plot.ts(logcola2)

cola2forecast <- HoltWinters(logcola2)

cola2forecast

hw1 <- HoltWinters(logcola2, beta = 1, gamma = 1)
hw1

hw2 <- HoltWinters(logcola2, beta = 1, gamma = 0)
hw2

hw3 <- HoltWinters(logcola2, beta = 0, gamma = 1)
hw3

hw4 <- HoltWinters(logcola2, beta = 0, gamma = 0)
hw4

plot(forecast(logcola2))
##################
# Lecture 1 Code #
##################

# SDGB 7844: Statistical Methods and Computation I
# Prof. C H. Nagaraja
# Fordham University

##########################
# 1. Let's Try R: Part 1 #
##########################

# Don't worry about parsing each of these commands.
# These are basic examples of what we will do in class this semester

## example 1: calculations
sqrt((5^2+4*2)/9)

## example 2: plotting
women
plot(women$height, women$weight, pch=19, las=TRUE, main="Scatterplot", 
     xlab="height", ylab="weight")

## example 3: simulation
x <- rnorm(1000)
hist(x, freq=FALSE, las=TRUE)
curve(dnorm(x), from=-4, to=4, col="orange", add=TRUE, lwd=2)

## example 4: numerical techniques
f <- function(x){return(x^4-3*x^3-13*x^2+27*x+36)}      # define function

integrate(f, lower=0, upper=2)                          # integration
x <- seq(0, 2, length=10)
curve(f, from=-4, to=5, las=TRUE, main="Integrate f(x)")
abline(h=0, lty=2)
polygon(x=c(0,x,2), y=c(0,f(x),0), density=40, col="cadetblue", border=TRUE)


##########################
# 2. Let's Try R: Part 2 #
##########################

# comment: R ignores everything after # on a line

# R as a calculator: + - * / ^
(3^2-4)*6  # use parentheses for correct order of operations

# built in functions: sqrt(), abs(), log()
# put arguments for function within parentheses
sqrt((3^2-4)*6) 

# assign the number 6 to R object called x
x <- 6

x+4       # add 4 to x
x         # x is still equal to 6
x <- x+4  # replace current value of x with x+4
x

y <- x    # assign value of x to new R object y
y
x <- x+7  # replace current x with x+7
y         # y does not change even though x has


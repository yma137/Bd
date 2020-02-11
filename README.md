# Bd
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

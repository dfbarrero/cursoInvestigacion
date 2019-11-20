#!/usr/bin/Rscript --vanilla

i <- seq(from=0, to=20, length=200)
y <- plnorm(i, mean=2, sd=0.3)

x11()

curve(dlnorm(x,mean=2,sd=0.7),from=0, to=30, xlab="Generation", ylab="Density", main="Distribution of generation-to-success")
x <- seq(0, 25, len = 100)
y <- dlnorm(x,mean=2,sd=0.7)
polygon(c(x[1], x, x[100]), c(dt(-4, 74), y, dt(4, 74)), col = "grey", border = NA) 

x <- seq(0, 15, len = 100)
y <- dlnorm(x,mean=2,sd=0.7)
polygon(c(x[1], x, x[100]), c(dt(-4, 74), y, dt(4, 74)), col = "red", border = NA) 

abline(h=0)
abline(v=25, lty="dotted")
text(23, 0.04, "G=25")
text(7, 0.02, "F(15)")
text(24, 0.0025, "F(G)")
#text(15, 0.06, "?", cex=10)

curve(dlnorm(x,mean=2,sd=0.7),from=0, to=30, xlab="Generation", ylab="Density", main="Distribution of generation-to-success", add=TRUE)

dev.copy2pdf(file="lognormal-shared.pdf")
while(1) Sys.sleep(10)

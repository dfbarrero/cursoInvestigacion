#!/usr/bin/Rscript --vanilla

i <- seq(from=0, to=20, length=200)
y <- plnorm(i, mean=2, sd=0.3)

x11()

plot(i, y, type="n", xlab="Generation (i)", ylab="P(i)", main="Lognormal model of success probability")
lines(i, y, col="red")

abline(h=1, col="grey20", lty="dashed")
abline(h=0, col="grey20", lty="dashed")
abline(v=4, lty="dotted")
abline(v=14,lty="dotted")
abline(v=7, lty="dotted")

# Sigma
arrows(4, 0.75, 14, 0.75,length=0.1, code=3, col="grey30")
text(9, 0.75, expression(sigma), pos=3, col="grey30")
# K
arrows(20, 0, 20, 1,length=0.1, code=3, col="grey30")
text(18.5, 0.5, expression(k(G)/n), pos=1, col="grey30")
# Mean
arrows(0, 0.1, 7, 0.1,length=0.1, code=3, col="grey30")
text(3.5, 0.12, expression(mu), pos=2, col="grey30")

dev.copy2pdf(file="lognormal.pdf")
while(1) Sys.sleep(10)

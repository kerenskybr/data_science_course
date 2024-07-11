
set.seed(67)

x = rnorm(10, 5, 7)
y = rnorm(10, 7)
z = rnorm(10, 6, 7)
t = rpois(10, 9)

plot(x, y, col=123, pch=10, main="Multi scatterplot", col.main="red", 
    cex.main=1.5, xlab="indep", ylab="depend")

?plot

# Adicionar mais variaveis
points(z, t, col="blue", pch=4)

# Adicionar mais variaveis
points(y, t, col=777, pch=9)

# adicionar legendas
legend(-6, 5.9, legend=c("Nivel1", "nivel2", "nivrl3"),
      col=c(123, "blue", 777), pch=c(10,4,9),
      cex=0.65, bty="n")
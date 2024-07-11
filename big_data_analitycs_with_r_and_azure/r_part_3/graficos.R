
# pra iniciar a demo, apertar enter no console
demo("graphics")

# Plot basico
x = 5:7
y = 8:10

plot(x, y)
?plot # acessar ajuda

altura <- c(145, 167, 176, 123, 150)
largura <- c(51, 63, 64, 40, 55)

plot(altura, largura)

# Plotando um dataframe
?lynx
plot(lynx)
plot(lynx, ylab="Plot com dataframes", xlab="Anos", col="red")

#--
hist(warpbreaks$breaks)


# dividir graficos
par(mfrow = c(2,2), col.axis = "red")
plot(1:8, las = 0, xlab="xlab", ylab="ylab", main="LAS = 0")
plot(1:8, las = 1, xlab="xlab", ylab="ylab", main="LAS = 1")
plot(1:8, las = 2, xlab="xlab", ylab="ylab", main="LAS = 2")
plot(1:8, las = 3, xlab="xlab", ylab="ylab", main="LAS = 3")
legend("topright", pch=1, col=c("blue", "red"), legend = c("var1", "var2"))


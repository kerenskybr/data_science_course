
attach(sleep)

sleepboxplot = boxplot(data=sleep, extra ~ group,
                       main="duração sono",
                       col.main="red", ylab="horas", xlab="Dorgas")

#calculo media
means = by(extra, group, mean)

#adicionar media ao grafico
points(means, col="red")


# Boxplot horizontal
horsleepboxplot = boxplot(data=sleep, extra ~ group,
                       main="duração sono",
                       col.main="red", ylab="horas", xlab="Dorgas", 
                       horizontal=T, col=c("blue", "red"))

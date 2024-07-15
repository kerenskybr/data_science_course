
dados = cars$speed

hist(dados)
hist(dados, breaks=10)
# mudando larguras das barras
hist(dados, label=T, breaks=c(0,5,10,20,30))
# tamanhos iguas
hist(dados, labels=T, breaks=10)

# Adicionadno linhas ao histograma
hey = hist(dados, breaks=10)
xaxis = seq(min(dados), max(dados), length=10)
yaxis = dnorm(xaxis, mean=mean(dados), sd=sd(dados))
yaxis=yaxis*diff(hey$mids)*length(dados)

lines(xaxis, yaxis, col="red")

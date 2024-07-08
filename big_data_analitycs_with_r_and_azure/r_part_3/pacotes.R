search()

install.packages(c("ggvis", "tm", "dplyr"))

# remove o import
detach(pachage:dplyr)

# listar o pacote
ls(pos="package:tm")

# datasets predefinidos
data()

# alguns podem ser plotados diretamente
plot(iris)
hist(lynx)

# Somando colunas de um dataset
sum(iris$Sepal.Length)

# o dataset pode ser conectado a area de trabalho:
attach(iris)
sum(Sepal.length)

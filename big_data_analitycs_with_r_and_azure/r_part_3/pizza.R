
fatias = c(40, 20, 40)

paises = c("Brasil", "Argentina", "Chile")

#unindo
paises = paste(paises, fatias)

paises = paste(paises, "%", sep="")

pie(fatias, labels=paises,
    col=c("darksalmon", "gainsboro", "lemonchiffon4"), main="Distribuição")


attach(iris)
install.packages("plotrix")
library(plotrix)

pie3D(fatias, labels=paises, explode=.05,
      col=c("steelblue1", "tomato2", "tan3"),
      main="Distribuição de Vendas")


install.packages("lattice")
library(lattice)

xyplot(data=iris, groups = Species, Sepal.Length ~ Petal.Length)

# Scatter plot agrupado
splom(trees)

barchart(Class ~ Freq | Sex + Age, data=as.data.frame(Titanic),
         groups=Survived, stack=T, layout=c(4,1),
         auto.key=list(title="Dados titanic", columns=2))

barchart(Class ~ Freq | Sex + Age, data=as.data.frame(Titanic),
         groups=Survived, stack=T, layout=c(4,1 ),
         auto.key=list(title="Dados Titanic", columns=2),
         scales=list(x="free"))

x = equal.count((rivers))
x

PetalLength <- equal.count(iris$Petal.Length, 4)
PetalLength

xyplot(Sepal.Length~Sepal.Width | PetalLength, data=iris)

# Adicionando grid
# os 3 pontos (...) sao o mesmo que os kwargs do python
xyplot(Sepal.Length~Sepal.Width | PetalLength, data=iris,
       panel=function(...){
         panel.grid(h=-1, v=-1, col.line = "skyblue")
         panel.xyplot(...)
       })

# Histograma
histogram(~Sepal.Length | Species, xlab="",
          data=iris, layout=c(3,1), type="density",
          main="lattice Histogram", sub="Iris Dataset, Sepal Length")

#plot violino
bwplot(Species~Sepal.Length, data=iris, pane=panel.violin)


# Grafico bem legal
par(mfrow=c(1,3))

cyls <- split(mtcars, mtcars$cyl)
for (i in 1:length(cyls)){
  tmpdf <- cyls[[i]]
  sname <- names(cyls)[i]
  plot(tmpdf$wt, tmpdf$mpg,
       main=paste("MPG vs Wt", sname, "Cyl"),
       ylim=c(0, 40), xlab="Wt / 1,000",
       ylab="MPG", pch=19, col="blue")
  grid()
}


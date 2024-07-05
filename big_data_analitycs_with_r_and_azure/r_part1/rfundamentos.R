# Exercício 1 - Crie um vetor com 12 números inteiros
vetor = c(1,2,3,4,5,6,7,8,9,10,11,12)

# Exercício 2 - Crie uma matriz com 4 linhas e 4 colunas preenchida com números inteiros
m = matrix(data = c(1,2,3,4,5,6,7,8,9,10,11,12,
                    13,14,15,16,33,44,22,33,11,1,0,2,
                    2,44,55,35,45,7,3,6,1,2,3,4,
                    7,2,6,2,9,3,36,57,3,8,58,23), ncol = 4)

m
# Exercício 3 - Crie uma lista unindo o vetor e matriz criados anteriormente
new_matrix = cbind(vetor, m)

new_matrix
# Exercício 4 - Usando a função read.table() leia o arquivo do link abaixo para uma dataframe
the_table = read.table("https://grodri.github.io/datasets/effort.dat")
the_table

# Exercício 5 - Transforme o dataframe anterior, em um dataframe nomeado com os seguintes
#labels:
new_labels <-  c("config", "esfc", "chang")
colnames(the_table) <- new_labels
the_table

# Exercício 6 - Imprima na tela o dataframe iris, verifique quantas dimensões existem no
iris
class(iris)
dim(iris)
summary(iris)
str(iris)

# Exercicio 7 - Crie um plot simples usando as duas primeiras colunas do dataframe iris
plot(iris$Sepal.Length, iris$Sepal.Width)

# Exercicio 8 - Usando s função subset, crie um novo dataframe com o conjunto de dados do dataframe iris em que Sepal.Length > 7
?subset
iris1 <- subset(iris, Sepal.Length > 7)
iris1

# Exercicio 9 - Crie um dataframe que seja cópia do dataframe iris e usando a função slice(), divida o dataframe em um subset de 15 linhas
# Dica 1: voce vai ter que instalar e carregar o pacote dplyr
# Dica 2: Consulte o help para aprender como usar a funcao slice()
novo_iris <- iris
novo_iris
install.packages("dplyr")
library(dplyr)
?slice
slice(novo_iris, 1:15)


# Exercicio 10 - Use a funcao filter no seu novo dataframe criado no item anterior e retorne apenas valores em que Sepal.Length > 6
# Dica: Use o RSiteSearch para aprender como usar a funcao filter
RSiteSearch('filter')
filter(novo_iris, Sepal.Length > 7)

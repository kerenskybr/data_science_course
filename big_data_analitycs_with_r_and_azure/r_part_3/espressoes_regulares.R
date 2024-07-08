str <- c("expressoes", "regulares", "em R", "permitem busca por padroes")

grep("ex", str, value = F) #retorna o indice
grep("ex", str, value = T) # retorna o valor

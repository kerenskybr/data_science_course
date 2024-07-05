vec1 <- c("Macho", "Femea", "Femea", "Macho", "Macho")
fac_vec1 <- factor(vec1)
fac_vec1

class(vec1)
class(fac_vec1)

# Variaveis categoricas automaticas
levels(fac_vec1)

summary(fac_vec1)

#-----
data = c(1,2,2,3,3,1,2,3,1,2,3,3,3,3)
fdata = factor(data, ordered=TRUE)
fdata

# mudando elementos
rdata = factor(data, labels = c("I", "II", "III"))
rdata

is.ordered(fdata)

df <- read.csv2("etnias.csv", sep=',')

str(df)

levels(df$Etnia)
summary(df$Etnia)

plot(df$Idade~df$Etnia, xlab = 'Etnia', ylab = 'Idade', main = 'Idade por Etnia')


install.packages("readr")
install.packages("data.table")
install.packages("ggplot2")
install.packages("scales")

library(readr)
library(dplyr)
library(ggplot2)
library(readr)
library(scales)
library(data.table)

#    user  system elapsed 
# 41.240   1.002  42.583 
system.time(df_teste1 <- read.csv2("TemperaturasGlobais.csv"))

#   user  system  elapsed 
# 13.129   0.895  14.211 
system.time(df_teste2 <- read.table("TemperaturasGlobais.csv"))

# user  system elapsed 
# 8.513   0.505   6.177 
system.time(df <- fread("TemperaturasGlobais.csv"))

cidades_brasil <- subset(df, Country == "Brazil")
cidades_brasil <- na.omit(cidades_brasil)
head(cidades_brasil)
nrow(cidades_brasil)
nrow(df)

cidades_brasil$dt <- as.POSIXct(cidades_brasil$dt, format="%Y-%m-%d")
cidades_brasil$Month <- month(cidades_brasil$dt)
cidades_brasil$Year <- year(cidades_brasil$dt)


plm <- subset(cidades_brasil, City="Recife")
plm <- subset(plm, Year %in% c(1796, 1846, 1896, 1946, 1996, 2012))
head(plm)

# Curitiba
crt <- subset(cidades_brasil, City == 'Curitiba')
crt <- subset(crt, Year %in% c(1796,1846,1896,1946,1996,2012))

p_plm <- ggplot(plm, aes(x = (Month), y = AverageTemperature, color = as.factor(Year))) +
  geom_smooth(se = FALSE,fill = NA, linewidth = 2) +
  theme_dark(base_size = 20) +
  xlab("Mês")+
  ylab("Temperatura Média") +
  scale_color_discrete("") +
  ggtitle("Temperatura Média ao longo dos anos em Palmas") +
  theme(plot.title = element_text(size = 18))

p_crt <- ggplot(crt, aes(x = (Month), y = AverageTemperature, color = as.factor(Year))) +
  geom_smooth(se = FALSE,fill = NA, size = 2) +
  theme_light(base_size = 20) +
  xlab("Mês")+
  ylab("Temperatura") +
  scale_color_discrete("") +
  ggtitle("Temperatura Média ao longo dos anos em Curitiba") +
  theme(plot.title = element_text(size = 18))

p_plm
p_crt

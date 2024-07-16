arquivo <- "paris.zip"

unzip("paris.zip")

# Gerando o dataframe
df2 <- read.csv("paris.txt", sep = ",", header = T) 
str(df)
dim(df)

# Criando o mapa
map.paris <- qmap("paris", source="google", zoom=12, 
                   darken=c(.3, "#BBBBBB")) 

# Unindo mapa e camada de dados
map.paris +
  geom_point(data = df2, aes(x = longitude, y = latitude, 
                             size = available_bike_stands, 
                             color = available_bike_stands), 
             alpha = .9, na.rm = T) +
  scale_color_gradient(low = "#33CC33", high = "#003300", name = "Número de Bikes Disponíveis") +
  scale_size(range=c(1,11) , guide="none") + 
  ggtitle("Número de Bikes Disponíveis em Paris") +
  theme(text = element_text(family = "Trebuchet MS", color = "#666666")) +
  theme(plot.title = element_text( size = 32, face = "bold", hjust = 0, vjust = .5))

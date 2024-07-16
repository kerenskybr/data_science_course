# Crimes em seattle

install.packages("downloader")
install.packages('osmdata')
library(osmdata)
library(ggmap)

arquivo <- "crimes.zip"
unzip("crimes.zip")

df <- read.csv("crimes.txt")

head(df)

mapa <- qmap("seattle", zoom=11, source="google",
             darken=c(.3, "#BBBBBB"))

google_api_key <- readLines("key.txt")

register_google(google_api_key)

mapa

mapa + geom_point(data=df, aes(x=Longitude, y=Latitude))

mapa + geom_point(data=df, aes(x=Longitude, y=Latitude),
                  color="darkgreen", alpha=0.03, size=1.1)

mapa +
  stat_density2d(data = df, aes(x = Longitude, y = Latitude, 
                                color = ..density.., 
                                size = ifelse(..density..<= 1,0,..density..), 
                                alpha = ..density..), geom = "tile",contour = F) +
  scale_color_continuous(low = "orange", high = "red", guide = "none") +
  scale_size_continuous(range = c(0, 3), guide = "none") +
  scale_alpha(range = c(0,.5), guide = "none") +
  ggtitle("Crimes em Seattle") +
  theme(plot.title = element_text(family = "Trebuchet MS", size = 36, face = "bold", hjust = 0, color = "#777777")) 



library(dplyr)
library(ggplot2)
library(plotly)

df <- read.csv("/home/rstudio/capital-bike-share/bike_weather_aggregated.csv", stringsAsFactors = FALSE)

df <- df %>%
  mutate(date = as.Date(date, format="%Y-%m-%d", tz="EST"),
         Start.station = as.factor(Start.station),
         Subscription.Type = as.factor(Subscription.Type),
         weekday = as.factor(weekday))

g1 <- ggplot(data=df) + geom_histogram(mapping = aes())


ggplot(diamonds, aes(price, colour = cut)) +
  geom_freqpoly(binwidth = 500)





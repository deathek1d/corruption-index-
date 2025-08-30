library(ggplot2)
library(maps)
library(tidyverse)
library(viridis)


world_coordinates <- map_data("world") 

df <- read.csv("/Users/<user>/Downloads/.csv")

comb <- left_join(world_coordinates, df, by = "region")

ggplot(comb, aes(x = long, y = lat, group = group)) + 
  geom_polygon(aes(fill = CPI), color = "black", linewidth = 0.2) + 
  scale_fill_viridis(option = "plasma", direction = -1, na.value = "grey80") +
  labs(
    title = "Corruption Index 2024",
    fill = "CPI",
    caption = "Countries in grey = data unavailable"
  ) +
  theme_void() +
  theme(
    plot.title = element_text(size = 18, face = "bold"),
    plot.subtitle = element_text(size = 12),
    plot.caption = element_text(size = 9)
  ) +
  coord_fixed(1.3)

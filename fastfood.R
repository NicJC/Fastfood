library(knitr)
knitr::opts_chunk$set(echo = FALSE)
knitr::opts_chunk$set(message = FALSE)
opts_chunk$set(comment="", fig.align="center", tidy=TRUE , cache=TRUE)
library(tidyverse)
library(ggfortify)
library(GGally)


food <- read_csv("C:/Data/fastfood.csv")



write.csv(food,"fastfood.csv",row.names=FALSE)

plot(food, col = c(1,2,3,4), main = "Matrix plot of data points")

ggsave("plot.png", width = 10, height = 7)

jpeg("rplot.jpg", width = 350, height = "350")
library(knitr)
knitr::opts_chunk$set(echo = FALSE)
knitr::opts_chunk$set(message = FALSE)
opts_chunk$set(comment="", fig.align="center", tidy=TRUE , cache=TRUE)
library(tidyverse)
library(ggfortify)
library(GGally)


food <- read_csv("C:/Data/fastfood.csv")



write.csv(food,"fastfood.csv",row.names=FALSE)

ggpairs(food[,c(1,4,5,6)],
        
        mapping = ggplot2::aes(color = restaurant),
        
        upper = list(continuous = wrap("density", alpha = 0.5), combo = "box_no_facet"))+ggplot2::labs(title = "Fastfood")  + 
  
  theme(axis.text.x = element_text(color="steelblue", 
                                   
                                   size=12, angle=90),
        
        axis.text.y = element_text( color="steelblue", size=12))

ggsave("plot.png", width = 10, height = 7)


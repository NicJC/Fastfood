library(knitr)
knitr::opts_chunk$set(echo = FALSE)
knitr::opts_chunk$set(message = FALSE)
opts_chunk$set(comment="", fig.align="center", tidy=TRUE , cache=TRUE)
library(tidyverse)



food <- read_csv("C:/Data/fastfood.csv")



write.csv(food,"fastfood.csv",row.names=FALSE)


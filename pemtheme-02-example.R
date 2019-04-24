rm(list=ls())

require(dplyr)
require(ggplot2)
require(reshape2)
require(devtools)

source("https://raw.githubusercontent.com/patrickmokre/theme_pem/master/pemtheme-01.R")

EuStockMarkets %>%
  melt() %>%
  rename(date=Var1,
         Index=Var2) %>%
  ggplot() +
  geom_line(aes(x=date,
                y=value,
                col=Index,
                group=Index)) +
  labs(title = "EU Stock Markets",
       subtitle = "Daily Closing Prices 1991-1998",
       caption = "Data: RStudio. Plot: @patrickmokre",
       y="",
       x="") +
  theme_pem()

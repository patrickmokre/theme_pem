rm(list=ls())

library(ggplot2)
library(gridExtra)
library(dplyr)

loadfonts_pem <- function(){
  windowsFonts(Montserrat = windowsFont("Montserrat"))
  windowsFonts(Esteban = windowsFont("Esteban"))
}

theme_pem <- function(base_size = 10,
                      base_family = "",
                      base_line_size = base_size / 170,
                      base_rect_size = base_size / 170){
  theme_minimal(base_size = base_size, 
                base_family = base_family,
                base_line_size = base_line_size) %+replace%
    theme(plot.title=element_text(size=15,
                                  face="bold",
                                  family="Montserrat",
                                  color="#990000",
                                  hjust=0),
          plot.subtitle = element_text(size=10,
                                       face="bold",
                                       family="Montserrat",
                                       hjust=0),
          plot.caption = element_text(size=10,
                                      face="plain",
                                      hjust=1),
          axis.title = element_text(size=8,
                                    face="plain",
                                    family="Esteban",
                                    color="#000000"),
          text = element_text(size=8,
                              face="plain",
                              family="Esteban",
                              color="#000000",
                              hjust = 0.5, 
                              vjust = 0.5, 
                              angle = 0, 
                              lineheight = 0.9,
                              margin = margin(), 
                              debug = FALSE),
          plot.background = element_rect(fill="#fff6f6",
                                         color="#ffe6e6"),
          panel.grid = element_line(color="#eeeeee",
                                    size=1),   
      
      complete = FALSE
    )
}

library(plotly)
library(reshape2)
library(shiny)

## Linear model 
model_final01<-lm(mpg ~wt + qsec,data=mtcars)

#Setup Axis
axis_x <- seq(min(mtcars$wt), max(mtcars$wt), by = 0.25)
axis_y <-seq(min(mtcars$qsec), max(mtcars$qsec), by = 1.0)
##seq(min(mtcars$mpg), max(mtcars$mpg), by = 1.0)

#Sample points
mpg_lm_surface <- expand.grid(wt = axis_x, qsec = axis_y,KEEP.OUT.ATTRS = F)

mpg_lm_surface$mpg <- predict.lm(model_final01 , newdata = mpg_lm_surface)
mpg_lm_surface <- acast(mpg_lm_surface, wt ~ qsec, value.var = "mpg") 

#Adding points and colors
hcolors=c("blue","red")[mtcars$am]

# Add labels to mtcars rownames field called MakeModel so easy to add the car name text info when scrolling over data points

mtcars$MakeModel<-rownames(mtcars)


















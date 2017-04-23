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
hcolors=c("red","blue")[mtcars$am]


server <- function(input, output) {
        
        # renderPlotly() also understands ggplot2 objects!
        output$plot <- renderPlotly({
              mtcars_plot<-
                      plot_ly(mtcars, 
                        x = mtcars$wt, 
                        y = mtcars$qsec, 
                        z = mtcars$mpg,
                        text = mtcars$MakeModel,
                        type = "scatter3d", 
                        mode = "markers",
                        marker = list(color = hcolors))  %>%
                        layout(title = "3-D Plot: MPG Prediction Plane Based on Linear Model (with Predictors Weight and 1/4 Mile Time)",
                               scene = list(
                                       xaxis = list(title = "Weight (wt)"), 
                                       yaxis = list(title = "1/4 mile time (qsec)"), 
                                       zaxis = list(title = "Miles per Gallon (mpg)"))
                        )
                # Adding the surface
                mtcars_plot <- add_trace(mtcars_plot,
                                         z = mpg_lm_surface,
                                         x = axis_x,
                                         y = axis_y,
                                         type = "surface")
                mtcars_plot
        })
        
        output$event <- renderPrint({
                d <- event_data("plotly_hover")
                if (is.null(d)) "Hover on a data point (corresponding to a particular vehicle) or a prediction point on the plane!" else d
        })
}


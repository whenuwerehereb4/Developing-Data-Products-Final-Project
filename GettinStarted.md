Overview of Plot Contents
-------------------------

This 3-d plot is intended to illustrate the predictions associated with
the linear regression model, created from the *mtcars* data set, that
predicts miles per gallon (mpg) using the predictors weight (wt) and 1/4
mile times (qsec). The plot also includes the individual data points
that were used to generate the model

Plot Variables Defined
----------------------

The plot consists of 3 main variables, corresponding to the x, y and z
axes of the plot (which variable corresponds to which axis is
interchangeable, but for current purposes we are assuming the z axis
refers to the response variable, mpg). There are 2 secondary variables
(outside the scope of the model, itself) that are built into the plot
display, providing additional context and insight.

### Predictors (*x and y axes*):

**Weight** - This corresponds to the weight of the vehicle in tons, so
the value 1.5, for example, is equivalent to 1,500 lbs.

**1/4 mile times (qsec)** - This measurement was made in seconds.

*Side note*: It's not clear whether this time was calculated from a
fully inert starting position or after having already reached full speed
(does not clearly state in the help file).

### Outcome Variable (*z axis*):

**Miles per gallon (mpg)** - in addition to referring to one of the
axes, the prediction plane included in the plot is based on the expected
outcomes for this variable based on the

### Secondary Variables (*not associated with the 3 axes described above*)

**Transmission Type (am)** This variable refers to the trasmission type.
A given vehicle will fall into one of two possible groups: a) manual
transmission; or b) automatic transmission  
- Because the relationship of transmission type to mpg was not found to
be significant in the model development stage, it was left out of the
model  
- It was included in the plot (red points=manual, dark points=automatic)
because it is still believed to have an impact on mpg that was simply
not captured in this data set due to issues with sample size and the
heavy confounding effect of weight in this data set.

**Make/Model of Vehicle** This variable corresponds to the individual
data points from the mtcars data set and provides useful context to the
measured variables.

User Interaction with the plot
------------------------------

-   the user can rotate the perspective of the 3-d plot by simply
    clicking and dragging the plot in any direciton of interest. (Just
    play around with it and get a feel for it)
-   the user can provide "inputs" to the interactive 3-d plot by simply
    hovering over individual data points or areas of the prediction
    plane.
-   when the user hovers over individual data points from the plot, a
    pop-up text box will appear with the following information: \*1) the
    numeric values corresponding to the x,y and z axes described above
    (x=weight, y=qsec, z=mpg); and \*\*2) the make/model of the vehicle

-   this information is available for both the individual data points
    from the mtcars data set (i.e. the red or black circles) and the
    prediction plane \*\* this information is available only for the
    individual data points and is not available when scrolling over the
    prediction plane (since these are theoretical values only and do not
    correspond to actual measurements)

Link to Shiny App:
<https://whenuwereherehereb4-shinyappps.shinyapps.io/devdataprods_finalproject/>

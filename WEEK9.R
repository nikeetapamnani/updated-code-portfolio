# PLOTTING SYSTEMS

#USING DATASET AIRQUALITY
data(airquality)
 with(airquality, (plot(Temp, Ozone) + lines(loess.smooth(Temp, Ozone))))
 
 #DATA CARE FOR PLOTS
 data(cars)
 
   ## Create the plot / draw canvas
   with(cars, plot(speed, dist))
 
   ## Add annotation
   title("Speed vs. Stopping distance")
   
   library(lattice)
   state <- data.frame(state.x77, region = state.region)
   xyplot(Life.Exp ~ Income | region, data = state, layout = c(4, 1))   
   
   library(ggplot2)
   data(mpg)
   
   qplot(displ, hwy, data = mpg)
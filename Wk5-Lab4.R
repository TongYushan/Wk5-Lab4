library(poliscidata)
welcome()
# Linear Regression
# Conditional Means
# Means of y conditional on the values on x
# how the value of y changes, on average
# as the value of x changes
# Linear Regression models how the value of y changes, on average
# as the value of x changes
# Why would we want to use a straight line?
# It's not possible to compute the conditional mean of y for each value of x
# x takes so many different values
# a good approximation
# We can control for confounding variables
# accomodate multiple independent variables
# A hat sign has more meaning in statistical inference
# 4% -> 5%
# one percentage point change
# 25 percent change
# Difference between percent and percentage

# lm (dep. var~ind.var, data = dataset)
lm(womleg_2015~college, data = states)
# Midterm paper related
summary(lm(womleg_2015~college, data = states))
# Final Paper related
# Scatter plot
# plot( x= ind.var, y= dep.var)
plot(x =states$college, y = states$womleg_2015,
     col = "lightblue",
     xlab = "% College Graduates",
     ylab = "% Women in State Legislature")
# After the scatter plot, draw a line
abline(lm(womleg_2015~college, data = states), 
       col= "red")
# p. 142: intercept, slope method
scatterplot(womleg_2015~college, data = states,
            boxplots = FALSE,
            grid = FALSE,
            smooth = FALSE,
            col = "blue",
            xlab = "% College Graduates",
            ylab = "% Women in State Legislature")
# Residual
# Prediction error
# Ordinary Least Squares; OLS
lm (gini10~dem_level4, data = world)
# p. 123-126
class(world$gini10)
class(world$dem_level4)
summary(lm (gini10~dem_level4, data = world))
stripchart(gini10~dem_level4,
           data = world,
           xlab = "Political Regime",
           ylab = "Gini Index, 2000-2010",
           main = "Income Inequality & Political Regime",
           col = "blue",
           vertical = TRUE,
           method = "jitter",
           font.main = 1)

abline( lm( gini10 ~ dem_level4.n, data=world ), col="red" )
plot( x = jitter( nes$ft_dem, amount=2),
      y = jitter( nes$fedspend_scale, amount=2),
      xlab="Democratic Party Feeling Thermometer",
      ylab="Support to Federal Spending Increase",
      col = "blue" )
abline( lm( fedspend_scale ~ ft_dem , data=nes ), col="red" )

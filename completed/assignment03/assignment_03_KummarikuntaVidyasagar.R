# Assignment: ASSIGNMENT 3
# Name: Kummarikunta, Vidyasagar
# Date: 2010-02-14

## Load the ggplot2 package
library(ggplot2)
theme_set(theme_minimal())

## Set the working directory to the root of your DSC 520 directory
setwd("/Users/12702/Desktop/MODatascience/DSC-520")

## Load the `data/r4ds/heights.csv` to
heights_df <- read.csv("data/r4ds/heights.csv")

head(heights_df)

# https://ggplot2.tidyverse.org/reference/geom_point.html
## Using `geom_point()` create three scatterplots for
## `height` vs. `earn`
ggplot(heights_df, aes(x=height, y=earn)) + geom_point(aes(color = height)) +
         labs(
           title = "Height vs Earn"
         )
## `age` vs. `earn`
ggplot(heights_df, aes(x= age, y= earn)) + geom_point(aes(color = age)) +
      labs(
          title = "Age Vs Earn"
      )
## `ed` vs. `earn`
ggplot(heights_df, aes(x=ed, y=earn)) + geom_point(aes(color = ed))

## Re-create the three scatterplots and add a regression trend line using
## the `geom_smooth()` function
## `height` vs. `earn`
ggplot(heights_df, aes(x=height, y= earn)) + geom_point(shape = 1) + geom_smooth()  
## `age` vs. `earn`
ggplot(heights_df, aes(x=age, y= earn)) + geom_point(aes(color = age)) +  
  geom_smooth(method = lm)
                                  
## `ed` vs. `earn`
ggplot(heights_df, aes(x=ed, y= earn)) + geom_point() + geom_smooth(method =lm)


## Create a scatterplot of `height`` vs. `earn`.  Use `sex` as the `col` (color) attribute
ggplot(heights_df, aes(x=height, y= earn, col=sex)) + geom_point() 

## Using `ggtitle()`, `xlab()`, and `ylab()` to add a title, x label, and y label to the previous plot
## Title: Height vs. Earnings
## X label: Height (Inches)
## Y Label: Earnings (Dollars)
ggplot(heights_df, aes(x=height, y= earn, col=sex)) + geom_point() + 
      ggtitle("Title: Heights Vs. Earnings") + xlab("Heights (Inches)") +
       ylab("Earnings (Dollars)")

# https://ggplot2.tidyverse.org/reference/geom_histogram.html
## Create a histogram of the `earn` variable using `geom_histogram()`
ggplot(heights_df, aes(x=earn)) + geom_histogram() 

## Create a histogram of the `earn` variable using `geom_histogram()`
## Use 10 bins
ggplot(heights_df, aes(x = earn)) + geom_histogram(bins = 10)

# https://ggplot2.tidyverse.org/reference/geom_density.html
## Create akernel density plot of `earn` using `geom_density()`
ggplot(heights_df, aes(x=earn)) +  geom_density(aes(x= earn), fill = "#66CCFF",
                                                color="#C4961A" , kernel ="cosine")  
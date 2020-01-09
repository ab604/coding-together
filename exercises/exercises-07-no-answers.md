# Coding together week 7 - visualisations

## Warm-up
+ Open RStudio and set-up a week 7 project and Rmarkdown file
+ Create a chunk that loads the tidyverse and run it.
+ Recreate the `mpg` scatter plot from week 1


## Why visualise

Plot the datasaurus with x and y and aesthetics and a point geometric object.
To plot each dataset on a different plot, add a facet layer with `facet_wrap(~ dataset)`
Here the `~` means faceting "depends upon the dataset variable"

## Geoms

Plot the mpg data as a line plot.
Plot it again with a smooth line. Hint the word smooth is important when choosing your geom. 


Plot rodent_type from the by_quarter data as a density plot, colour by rodent_type


## Facets

Plot mpg data scatterplot, hwy vs dipl, and use facet_grid to split the plot
by drv and cyl

## Statistical transformations

Plot `hwy` from the `mpg` data as a histogram with binwidth of 15.


## Position adjustments

Add point and jitter to the by_quarter boxplot, make the points transparent.

## Coordinate adjustments

Flip the by_quarter boxplot

---
output:
  pdf_document: default
  html_document: default
---
# Coding together week 7 - visualisations

## Warm-up
+ Complete the quiz
+ Open RStudio and set-up a week 7 project and Rmarkdown file
+ Create a chunk that loads the tidyverse and run it.
+ Recreate the `mpg` scatter plot from week 1

```{r}
ggplot(data = mpg) + 
 geom_point(mapping = aes(x = displ, y = hwy))
```

## Why visualise

Plot the datasaurus with x and y and aesthetics and a point geometric object.
To plot each dataset on a different plot, add a facet layer with `facet_wrap(~ dataset)`
Here the `~` means faceting "depends upon the dataset variable"


```{r datasaurus-plot, cache=TRUE}
 ggplot(data = datasaurus) +
        geom_point(mapping = aes(x,y)) +
        facet_wrap(~ dataset)
```

## Geoms

Plot the mpg data as a line plot.
Plot it again with a smooth line. Hint the word smooth is important when choosing your geom. 

```{r}
ggplot(data = mpg) + 
 geom_line(mapping = aes(x = displ, y = hwy))
 
ggplot(data = mpg) + 
 geom_smooth(mapping = aes(x = displ, y = hwy))
```

Plot rodent_type from the by_quarter data as a density plot, colour by rodent_type

```{r}
ggplot(data= by_quarter,
        mapping = aes(x = rodent_type, 
                      colour = rodent_type)) +
   geom_density()
```

## Facets

Plot mpg data scatterplot, hwy vs dipl, and use facet_grid to split the plot
by drv and cyl

```{r}
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) + 
  facet_grid(drv ~ cyl)
```

## Statistical transformations

Plot `hwy` from the `mpg` data as a histogram with binwidth of 15.

```{r}
ggplot(mpg,aes(x = hwy)) + 
geom_histogram(bins = 15)
```

## Position adjustments

Add point and jitter to the by_quarter boxplot, make the points transparent.

```{r}
# Boxplot with jitter
ggplot(data= by_quarter,
       mapping = aes(x = rodent_type, y = mean_captures, 
                     colour = rodent_type)) +
  geom_boxplot() +
  geom_point(position = "jitter", alpha = 0.5) +
  facet_wrap(~ plot_type)
```

## Coordinate adjustments

Flip the by_quarter boxplot

```{r}
# Boxplot with jitter
ggplot(data= by_quarter,
       mapping = aes(x = rodent_type, y = mean_captures, 
                     colour = rodent_type)) +
  geom_boxplot() +
  geom_point(position = "jitter", alpha = 0.5) +
  facet_wrap(~ plot_type) +
  coord_flip()
```

# Coding together week 7 - visualisations

+ Recreate the `mpg` scatter plot from week 1

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

Add point and jitter to the by_quarter boxplot

```{r}
# Boxplot with jitter
ggplot(data= by_quarter,
       mapping = aes(x = rodent_type, y = mean_captures, 
                     colour = rodent_type)) +
  geom_boxplot() +
  geom_point(position = "jitter", alpha = 0.5) +
  facet_wrap(~ plot_type)
```


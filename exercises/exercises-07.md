# Coding together week 7 - visualisations

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


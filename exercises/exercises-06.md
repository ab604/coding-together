# Coding together week 6

+ Open up the week five Rproject
+ Use the links I emailed to import the csv data as: surveys_ms, stocks,
surveys_subset 
+ Inspect surveys_ms for explicit and implicit missing values

## Missing values

```{r}
stocks <- read_csv("https://raw.githubusercontent.com/ab604/coding-together/master/exercises/stocks.csv")
```

+ Check if `stocks` has explicit missing values:
+ Check if `stocks` has implicit missing values

### Complete

Use `complete()` to make implicit missing values in `stocks` explicit

### Fill

Building on the last answer use `fill()` to replace `NA` in return with last non-missing value
Does this make sense?

### Coalesce

Complete the table again, but this time use `mutate` with `coalese()` to fill in
the mean `return` value.

## Joins

I've created a weather table from Portal data that has the average temperature
and rainfall. Try out joins with surveys_subset.

```{r}
weather <- read_csv("https://raw.githubusercontent.com/ab604/coding-together/master/exercises/portal-weather-subset.csv")
```

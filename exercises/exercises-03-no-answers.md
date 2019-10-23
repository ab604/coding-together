# Coding together week 3 - Data wrangling II

## Warm-up

+ Open RStudio and open the project for week 2
+ What is in your environment?
+ What packages are loaded? 
+ What directory is RStudio in?
+ Please draw a picture of where you think your project exists?

## This lesson covers:

An intro to tidyr

Pivoting changes the representation of a rectangular dataset, without changing the data inside of it.
pivot_longer() Pivot data from wide to long
pivot_wider() Pivot data from long to wide

Manipulating character vectors to unite and separate variables:
unite() Unite multiple columns into one by pasting strings together
separate() Separate a character column into multiple columns using a regular expression separator

Missing values:
complete() Complete a data frame with missing combinations of data
drop_na() Drop rows containing missing values
replace_na() Replace missing values

Joining tables:
bind_rows()
bind_cols()
inner_join()
left_join()
right_join()

# Extras

The `dslabs` package contains a variety of interesting data. 

For example there are two tables, one called `murders` containing the number
of homicides in 2010 for each state in the USA,
and another called `results_us_election_2016` containing the US presidential election
results for 2016 for each state.

Let's take a `glimpse()` at these tables:

```{r dslabs-murders-elections}
# Number of homicides in 2010 for each state in the US
glimpse(murders)
# US presidential election results for 2016 for each state
glimpse(results_us_election_2016)
```

Although these are tables of different data, they both have a `state` variable,
which means we can use that to join them together and combine the datasets.

For example, in the USA the president is elected not through a popular vote, but 
via a process called the electoral college by which
[electoral vote allocation](https://www.archives.gov/federal-register/electoral-college/allocation.html)
is based upon the US census and the population size in each state such that
more populated states have more votes than less populated ones.

We can look at this relationship by joining these two tables, as the `murders`
table contains `population` information for each state and the `results_us_election_2016`
contains the `electoral_votes` for each state.

```{r}
library(scales)
library(ggrepel)
murders %>% inner_join(results_us_election_2016, by = "state") %>% 
        ggplot(aes(x = population, y = electoral_votes,label = abb)) +
        geom_point() +
        geom_text_repel() +
        geom_smooth(method = "lm",se = FALSE) +
        scale_x_log10(labels = comma_format()) +
        scale_y_log10() 
        
        
```
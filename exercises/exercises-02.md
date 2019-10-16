# Coding together week 2 - Data wrangling I

## This lesson covers:

An intro to dplyr:

Transforming tables:
mutate() adds new variables that are functions of existing variables
select() picks variables based on their names.
filter() picks cases based on their values.
summarise() reduces multiple values down to a single summary.
arrange() changes the ordering of the rows.

## Vectors, types, indexing and data frames

1. Make a character vector of three names
2. Make a numeric vector of three numbers
3. Make a factor vector of three fruit
4. Combine into a data frame.

## Formative exercises

filter: 

Use filter to

Filter observations that only occurred on the 9th of March 1986:

```{r}
filter(surveys, month == 3 & day == 9 & year == 1986 & species_id == "NL") %>% View()
```

arrange:

Use arrange to find the earliest and latest years in the dataset:

```{r}
surveys %>% arrange(year)

surveys %>% arrange(desc(year))
```


Use arrange and filter to find the heaviest 
Kangeroo rat, Krats are DM,DO and DS.

```{r}
surveys %>% filter(species_id == "DM" | species_id == "DO" | species_id == "DS") %>% 
arrange(desc(weight))
```

select

mutate

group_by

summarise

```{r} 
# Check the output using a summary pipe, we should have 8 species of 2 types
surveys_mutated %>% group_by(rodent_type) %>% summarise()
```

## Summative exercise

By semester from 1980 to 2000.

```{r}
surveys %>% 
filter(plot_id %in% exp_plots, 
year >= 1980 & year <= 2000) %>% 
mutate(rodent_type = case_when(
         species_id == "DM" ~ "Kangaroo Rat",
         species_id == "DO" ~ "Kangaroo Rat",
         species_id == "DS" ~ "Kangaroo Rat",
         species_id == "PP" ~ "Granivore",
         species_id == "PF" ~ "Granivore",
         species_id == "PE" ~ "Granivore",
         species_id == "PM" ~ "Granivore",
         species_id == "RM" ~ "Granivore",
         TRUE ~ "Other"),
         date = make_date(day = day, month = month, year = year), 
               semester = semester(date, with_year = TRUE)) %>% 
               group_by(rodent_type,plot_type,semester) %>% 
        summarise(captures = n()/2) %>% 
        filter(rodent_type != "Other") %>% 
        ggplot(aes(x=semester,y=captures,colour=rodent_type)) +
  geom_line() +
  geom_point() +
  facet_wrap(~ plot_type)
```


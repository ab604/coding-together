# Coding together week 2 - Data wrangling I

## This lesson covers:

An intro to dplyr:

Transforming tables:
mutate() adds new variables that are functions of existing variables
select() picks variables based on their names.
filter() picks cases based on their values.
summarise() reduces multiple values down to a single summary.
arrange() changes the ordering of the rows.

Joining tables:
bind_rows()
bind_cols()
inner_join()
left_join()
right_join()

## Formative exercises

arrange:

Use arrange and filter to find the heaviest Kangeroo rat
```{r}
surveys %>% filter(species_id == "DM" | species_id == "DO" | species_id == "DS") %>% 
arrange(desc(weight))
```

filter

select

mutate

group_by

summarise

## Summative exercies
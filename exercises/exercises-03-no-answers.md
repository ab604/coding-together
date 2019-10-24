# Coding together week 3 

## Warm-up

+ Open RStudio and open the project for week 2
+ What is in your environment?
+ What packages are loaded? 
+ What directory is RStudio in?
+ Please draw a picture or write a description of where you think your project exists? e.g. a flowchart or an analogy.
+ And please complete the quiz if you didn't already.

## Data wrangling I

An intro to dplyr:

Transforming tables:
filter() picks cases based on their values.
arrange() changes the ordering of the rows.
select() picks variables based on their names.
mutate() adds new variables that are functions of existing variables
summarise() reduces multiple values down to a single summary.

## Recap: arrange() and filter()

What do we expect to happen?

## select

Create an object called surveys small that filters weight less than 5 and
selects the columns species_id, sex and weight. Use the pipe.

## mutate:

Use mutate to first create a weight_kg variable and
then create another variable weight_lb using weight_kg multiplied by 2.2.
You don't need to create an object.

## summarise:

Use filter with is.na() to remove the NA values from the weight variable,
the use summarise to create mean_weight and min_weight variables, using mean()
and min() functions.



## group_by:

Group the surveys data by sex and then use summarise with the n() function
to create a count variable, that gives the number of male and female animals.

Use surveys_mutated to group_by rodent_type and then summarrise,
we should have 8 species of 2 types.

## Summative exercise

Repeat the analysis by semester from 1980 to 2000.

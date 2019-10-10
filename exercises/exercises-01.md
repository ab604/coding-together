---
output:
  pdf_document: default
  html_document: default
---
# Coding together week 2 - Introduction

## Formative exercises for lesson 1

### Exploring RStudio 

1 . Find the keyboard shortcuts menu:

Tools > Keyboard shortcuts help

2. Change the appearance to something different.

### Installing packages and using functions

1 .Install cowsay and make it talk:

```{r}
install.packages("cowsay")
library(cowsay)
cowsay::say("I are programmer. I make computer go beep beep boop boop")

Make a cow say "Hello  world!"
say(by = "cow")
```

2. Roundhouse

``` {r}
install.packages("roundhouse")
library(roundhouse)
randomfact()
kick()
```

### Creating folders

1 .Create a folder called R and folder called outputs in your project folder

## R notebooks

Read and follow the instructions, and then preview

### mpg dataset

1. Find out about the mtcars package: 
 - what is it? 
 - and what kind of data does it contain?
 
2. Let's make a plot and answer a question about the relationship between engine size (displ)
and (highway) miles per gallon:

 ```{r} 
 mpg %>% ggplot(aes(x = displ,y = hwy)) + geom_point() 
 ```
 - your turn, repeat the plot but add a colour aesthetic for class
 ```{r} 
 mpg %>% ggplot(aes(x = displ,y = hwy, colour = class)) + geom_point()
 ```
 - Add a size aesthetic for number of cylinders
 ```{r} 
 mpg %>% ggplot(aes(x = displ,y = hwy, colour = class, size = cyl)) + geom_point()
 ```

3. Let's look at the object, it's a tidy structure:
```{r}
glimpse()  
str()
```

4. Let's look at the data types in mtcars:

 ```{r}
 #A tibble: 234 x 11
   manufacturer model      displ  year   cyl trans      drv     cty   hwy fl    class  
   <chr>        <chr>      <dbl> <int> <int> <chr>      <chr> <int> <int> <chr> <chr>  
 1 audi         a4           1.8  1999     4 auto(l5)   f        18    29 p     compact
 2 audi         a4           1.8  1999     4 manual(m5) f        21    29 p     compact
 3 audi         a4           2    2008     4 manual(m6) f        20    31 p     compact
 4 audi         a4           2    2008     4 auto(av)   f        21    30 p     compact
 5 audi         a4           2.8  1999     6 auto(l5)   f        16    26 p     compact
 6 audi         a4           2.8  1999     6 manual(m5) f        18    26 p     compact
 7 audi         a4           3.1  2008     6 auto(av)   f        18    27 p     compact
 8 audi         a4 quattro   1.8  1999     4 manual(m5) 4        18    26 p     compact
 9 audi         a4 quattro   1.8  1999     4 auto(l5)   4        16    25 p     compact
10 audi         a4 quattro   2    2008     4 manual(m6) 4        20    28 p     compact
# ... with 224 more rows
```

5. Let's save it and read it back in:

 ```{r}
 write_excel_csv(mpg,"data/mpg-dataset-10-10-2019.csv")
 mpg_dat <- read_csv("")
 ```

### Vectors and assignment

1. Create a character vector of your name and assign it to an object called my_name

2. Create a sequnence of numbers from 1 to 10 and assign it to an object called my_seq

### Data frames/tibble

```{r}
knitr::knit_exit()
```

## Summative assessment

Using the `heights` dataset from library()

1. Create a new project called 'coding-assessment-01'
2. Create two folders in this project: R and outputs
3. Create a R script using best naming practices i.e. name-date.R
4. In the script, write some comments at the top e.g. name, date, description
5. Load the `dslabs` package and inspect the `heights` dataset:
 - How many variable? 
 - What data types are they? 
 - How many observations? 
6. Create a density plot with ggplot2:
    ggplot(data = heights, aes(x =height, fill = sex)) + geom_density()
7. Save the plot as pdf and the tibble as csv file to the output folder.
    ggsave("outputs/height-plot-02-05-2019.pdf")
    write_csv_excel(dat,"outputs/example-table-02-05-2019.csv")



# Ideas for coding togetheR

## Formative exercises for lesson 1

### Exploring RStudio 

1 . Find the keyboard shortcuts menu:

Tools > Keyboard shortcuts help

2. Change the appearance to something different.

### Installing packages and using functions

1 .Install cowsay and make it talk:

install.packages("cowsay")
library(cowsay)
cowsay::say("I are programmer. I make computer go beep beep boop boop")

Make a cow say "Hello  world!"
say(by = "cow")

### Creating folders

1 .Create a folder called R and folder called outputs in your project folder

### mpg dataset

1. Find out about the mtcars package: 
 - what is it? 
 - and what kind of data does it contain?
 
2. Let's make a plot and answer a question about the relationship between engine size (displ)
and (highway) miles per gallon:
 - mpg %>% ggplot(aes(x = displ,y = hwy)) + geom_point()
 - your turn, repeat the plot but add a colour aesthetic for class
 mpg %>% ggplot(aes(x = displ,y = hwy, colour = class)) + geom_point()
 - Add a size aesthetic for number of cylinders
 mpg %>% ggplot(aes(x = displ,y = hwy, colour = class, size = cyl)) + geom_point()

3. Let's look at the object:
glimpse() or str()

4. Let's look at the data types in mtcars

5. Let's save it and read it back in:

 write_excel_csv(mpg,"data/mpg-dataset-10-10-2019.csv")

### Vectors and assignment

1. Create a character vector of your name and assign it to an object called my_name
2. Create a sequnence of numbers from 1 to 10 and assign it to an object called my_seq

### Data frames/tibble

### Plotting

1 .Plot again, but add another aesthetic

### Exporting data

1. Export the data frame you made as a csv file.

## Summative assessment

1. Create a new project called 'coding-assessment-01'
2. Create two folders in this project: R and outputs
3. Create a R script using best naming practices i.e. name-date.R
4. In the script, write some comments at the top e.g. name, date, description
5. Create a tibble comprising of a character vector, a numeric vector
6. Create a density plot with ggplot2:
    ggplot(data = heights, aes(x =height, fill = sex)) + geom_density()
7. Save the plot as pdf and the tibble as csv file to the output folder.
    ggsave("outputs/height-plot-02-05-2019.pdf")
    write_csv_excel(dat,"outputs/example-table-02-05-2019.csv")



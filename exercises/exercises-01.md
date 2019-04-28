# Ideas for coding togetheR

## Formative exercises for lesson 1

### Exploring RStudio 

1 . Find the keyboard shortcuts menu:

Tools > Keyboard shortcuts help

### Installing packages and using functions

1 .Install cowsay and make it talk:

install.packages("cowsay")
library(cowsay)
cowsay::say("I are programmer. I make computer go beep beep boop boop")

Make a cow say "Hello  world!"
say(by = "cow")

### Creating folders

1 .Create a folder called R and folder called outputs in your project folder

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



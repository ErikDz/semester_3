
## 1st TD

### Basic syntax
- **Variable assignment:** You can either use `=` or `<-`. They are the same thing!
- `attach()` used to access the variables present in the data framework without calling the data frame.
> instead of `data$var`, you can use `var`

- **for loop:** `for (i in 1:10) { print(i) }`. To iterate over a vector, use `for (i in x) { print(i) }`

- **function definition:** `f = function(x) { return(x^2) }`. To call the function, use `f(2)`

- `sample(x, size=n)` to sample n elements from x.

- `prop.table()` function used to convert a frequency table to a proportion table. Shows the proportion of each unique value in the vector.



### Plotting
- `plot(x, y, type='p', main='name_of_title', xlab='name_of_x_label', ylab='name_of_y_label')`
    - x and y are vectors of values to be plotted. type is the type of plot to be used. p is for points, l is for lines, b is for both points and lines.

<br>

- **Bar plot:** `barplot(x, xlab='name_of_x_label', ylab='name_of_y_label', main='name_of_title')`
  
    - Here x is a vector of values to be plotted. i.e. `barplot(c(1,2,3,4,5))` will plot a bar plot with 5 bars, each with a value of 1,2,3,4,5 respectively.


<br>

- **Pie plot:** `pie(x, labels=names(x))`

    - Again, x is a vector of values to be plotted
<br>
- **Histogram:** `hist(x, nclass=n,freq=BOOL,main='name_of_title', xlab='name_of_x_label', ylab='name_of_y_label')` 

    - nclass: is the number of classes to be used in the histogram. If not specified, it will be calculated automatically.

    - freq is a boolean value. If TRUE, the histogram will be a frequency histogram. If FALSE, it will be a proportion histogram.
    - breaks is a vector of values to be used as the class boundaries. If not specified, it will be calculated automatically.
  - Only required argument is x, the vector of values to be plotted.

<br>

- **Boxplot:** `boxplot(x, main='name_of_title', xlab='name_of_x_label', ylab='name_of_y_label')`
> Box and whisker
<br>

- `lines(x, y, type='l')` to add a line to a plot. x and y are vectors of values to be plotted. type is the type of plot to be used. p is for points, l is for lines, b is for both points and lines.

### Descriptive Statistics
- `mean(x)` to calculate the mean of x
- `median(x)` to calculate the median of x
- `sd(x)` to calculate the standard deviation of x
- `var(x)` to calculate the variance of x 
- `cov(x,y)` to calculate the covariance between x and y

### Additional functions

- `ecdf()` function used to create an empirical cumulative distribution function. It returns a function that can be used to evaluate the ecdf at any point. (can be fed into `plot()`)

- `lm()` function used to create a linear model. It returns a linear model object that can be used to make predictions. You use the `predict()` function to make predictions.
> Example: `lm(y~x)` will create a linear model of y on x. `predict(lm(y~x), newdata=data)` will make predictions on the data using the linear model.


## 2nd TD

### Number generation
- `r<name_of_dist>()` to generate a random number from a `<name_of_dist>`
> Has a first argument `n=` for the number of random numbers to be generated.

- The prefix r of all these commands used here for “random” can be replaced by 3 other prefix:
    1. **d**: for density, which is the value of the probability density at x∈R for continuous random variables and the value of the probability at x for discrete rand om variables.
    2. **p**: the cumulative distribution function at x∈R.
    3. **q**: the theoretical quantile at p∈(0,1).

### Additional functions
- `seq(from, to, by)` to generate a sequence of numbers from `from` to `to` with a step of `by`
> This can be fed into a p<name_of_dist>() function to generate the probility for each entry.

<br>

- `cumsum(x)` to calculate the cumulative sum of x
- `c()` to concatenate vectors
> kind of used like an array in python. To append to a vector, use `c(x, 1)` to append 1 to the end of x.
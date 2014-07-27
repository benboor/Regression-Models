#Executive summary on Motor Trend Data: 

Is Automatic or manual tramission better for MPG
Quantify the MPG difference between automatic and manual transmissions


The 1974 edition Motor Trend Magazine contains a dataset with information about fuel consumption and 10 aspects of automobile design for 32 different 1973-74 vehicles.
The dataset is reffered to as mtcars can be found at http://stat.ethz.ch/R-manual/R-devel/library/datasets/html/mtcars.html

#Data preprocessing

The first step in the analysis of the data is loading it into R from its built in library.
```r
data(mtcars)
```

```r

mtcars$am <- as.factor(mtcars$am)
levels(mtcars$am) <- c("Automatic", "Manual")
```

#Exploratory data analysis


```r
boxplot(mpg~am, data = mtcars, col = c(" light blue", "light blue"), xlab = "Transmission type", ylab = "Miles per Gallon", main = "Miles per gallon for automatic and manual transmissions")
		
		
```		
![mpgAutoManual](mpgAutoManual.png)

An initial exploratory data analysis using a boxplot shows that the mean value for manual transmissions is higher than the mean value for automatic transmissions.
The boxplot also shows that the range of values for automatic and manual transmissions overlaps.


#Generation of a linear model

```r
#scatter plot to determine difference between transmission and mpg
plot(mtcars$am,mtcars$mpg,xlab = "Type of Transmission 0-auto, 1-manual",ylab="MPG(Miles per Gallon)")








#boxplot of 
boxplot(mpg ~ am, names = c("automatic","manual"),data=mtcars,ylab="MPG(Miles per Gallon)",xlab ="Type of transmission")
```


To test signifigance use Chi square

automaticsMPG <- mtcars[mtcars$am == "Automatic",]
manualsMPG <- mtcars[mtcars$am == "Manual",]
t.test(automaticsMPG$mpg, manualsMPG$mpg)
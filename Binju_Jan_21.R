data = c(1,2,3)
view(data)
mydataframe <- data.frame(
  name = c("Binju", "Preeti"),
  age = c(10, 30),
  height = c(150, 200)
)

mydataframe
attach(mydataframe)
plot(age ~height)
#To view current working directory
getwd()
getwd()
# To install gg plot
install.packages("ggplot2")
library
getwd()

# To assign variables
x <- 1
x<-1
x < -1
# Paranthesis prints
(X <- -1)
(Y<- 2)
y <- 2
-------------------------------------------------------------------------
#Case sensitivity
X == x
# Logical negation operator
X != x
X! =x
X!= x
X! = x

#Types of data
a <-2.5
a
class(a)

b <- 3L
b
class(b)

x <- "Binju"
x
class(x)

t <- TRUE ; f <-FALSE
t
f

x <- 1+1i
i <- 2
(i <- 2)
x


# Types of data structures #C means combine
vector <- c(1,2,3,4)
vector
class(vector)

vector2 <- 1:4
vector2
class(vector2)

vector3 <- c(5,8,10,12)
vector3

# colon
vector4 <- 5:12
vector4

## Matrix
mymt <- matrix (vector, nrow = 3, ncol = 3)
mymt <- matrix (vector, nrow = 2, ncol = 2)
mymt

##dataframe
df <- data.frame(id = c("A", "B", "C", "D"), values = vector)
df

df2 <- data.frame(id = c("E", "F", "G", "H"), values = vector2)
df2

## Empty vector
num_vec <- numeric(5)
num_vec
## Fill vector
num_vec <- c(9,10,11,12)
num_vec
# add extra number
num_vec[8] <- 8
num_vec

num_vec[5] <- 5
num_vec

# View specific value in vector
num_vec[10]
num_vec[5]

num_vec[8] <-num_vec[7] 
num_vec
num_vec[8]

num_vec <- numeric(5)

num_vec <- c(1,2,3,4)

num_vec[5] <- 5

num_vec[3]

cha_vec <- c("this", "is", "a", "vector")

cha_vec[c(1,4)]

names(num_vec) <-c("first", "second", "third", "fourth", "fifth")

num_vec[c("second","fourth")]

#Activity
numeric_vector <- numeric(5)
numeric_vector <- c(2,4,6,8,10)
character_vector <- c("my", "name", "is", "bin", "ju")
(names(numeric_vector) <- character_vector)
(new_vec <- numeric_vector[c(1,3,5)])
(new_vec2 <- names(new_vec))

#Math and vectors
(2+4)*(2-4)
4/2
2^2
2^(2*4)
sqrt(2)
log10(4)
log(4)
log(2=2, base=3)

#Activity 2
Leaf_area <- c(2.5, 1.6, 2.2, 2.6)
Leaf_mass <- c(22, 15, 20, 24)
mean(Leaf_area)
mean(Leaf_mass)

median(Leaf_area)
median(Leaf_mass)
# Leaf area/mass for each leaf
Leaf_area/Leaf_mass
#New vector LMA containing these values
LMA <- (Leaf_area/Leaf_mass)
LMA
#Average leaf mass/area
mean(LMA)

# Leaf mass/area for each leaf
Leaf_mass/Leaf_area
#New vector LMA containing these values
LMA <- (Leaf_mass/Leaf_area)
LMA
#Average leaf mass/area
mean(LMA)
median(LMA)
max(LMA)
min(LMA)
------------------------------------------------------------------------

getwd()
setwd("D:/WVSU works/BiotechniquesII")
my_dataframe <- read.csv("data.csv")
print (my_dataframe) 
summary (my_dataframe) 

# Make a dataframe in R
my_df <- data.frame (
  ID = c(1:4),
  Leaf_area = c(2.5, 1.6, 2.2, 2.6),
  Leaf_mass = c(22, 15, 20, 24)
)
print (my_df) 
summary (my_df)

#View the dataframe

my_df$Leaf_area
#Select row
my_df[2,]

#Select column
my_df[,3]

#Select specific value
my_df[1,3]

#Select multiple columnsor rows
my_df[2:3,1:2]
my_dataframe[2:4,3:5]

my_df$LMA <- my_df$Leaf_mass / my_df$Leaf_area

#Activity1
friends <- c("Preeti","Ramya", "Vivian", "Kushal", "Vaivhavi")
my_people <- data.frame (
  name = friends,
  age = c(24, 25, 26, 27, 32),
  gender = c("F", "F", "F", "M", "F"),
  average_commute_time = c(5, 8, 9, 10, 12)
)
 mean(my_people$age)
mean(my_people$average_commute_time)
min(my_people$age)  
max(my_people$average_commute_time)

#conditional statements

num1 <- 1
num2 <- 2
num1 == num2

num1< num2
num1> num2

# Exclamatory for negation
!(num1> num2)

num1 != num2
# Multiple condition using & (and) and | (or) #for example: used in gene expression analysis: level of significance, log to forth change
var1 <- 1
var2 <- "red"

(var1 ==1) & (var2=="red") 
(var1 ==1) & (var2=="green")
(var1 ==1) | (var2=="red")
(var1 ==1) | (var2=="green")

#If-else statements
if(num1 == num2)
{
  print("num1 equals num2")
}else
{
  print("num1 doesnot equal num2")
}

#Functions
my_function <- function()
{
  print("Good Night!")
}

my_function()

my_function <- function(x, y) {
  val <- x + y
}

my_function(1,2)

my_function <- function(x, y) {
  val <- x + y
  return(val)
}

my_function(1,2)

#Activity 2
my_function <- function (x,y) {
  if (x>y)
  {
    val <- x^2
    return(val)
  } else
  {
    val <- y^3
    return(val)
    }
  
}

#

my_function(2,3)

#Activity: Making a function
activity_function <- function (x) {
  random <- sample(1:5, 1)
  if (x == random)
  {
    print("These values are the same")
  } else
  {
    print(random)
    print("These values are not the same")
  }
  
}

activity_function(1)
activity_function(5)

phenotype <- read.csv("data.csv")
phenotype <- read.csv("data.csv")
#Own Function

phenotype <- read.csv("Book.csv")
x <- phenotype$GY
y <- phenotype$SL
mean(phenotype$GY)
spike_length <- mean(phenotype$SL)
print(yield)
print (phenotype)

getwd()
setwd("D:/WVSU works/BiotechniquesII")
own_function <- function (x, y) {
phenotype <- read.csv("Book.csv")
x <- phenotype$GY
y <- phenotype$SL
yield <- mean(phenotype$GY)
spike_length <- mean(phenotype$SL)
  if ((x>yield) & (y>spike_length))
  {
    print(phenotype$Treatment)
  } else
  {
    print("Research gone wrong")
   
  }
  
}
own_function(x,y)




#########################################


data()
data()
summary(trees)
head(trees)
tail(trees)
class(trees)
str(trees)
dim(trees)
names(trees)

install.packages("dplyr")
library(dplyr)
?filter
?mutate
?summarize

filter(trees, Volume > 40)
filter(trees, Girth == 20.6)
mean(trees$Volume)
arrange(trees, Girth)
select(trees, Height, Volume)
mutate(trees, 
       aspect_ratio = Height/Volume)
summarize(trees,
          mean_height = mean (Height),
          sd_height = sd(Height))

##Use the pipe operator
trees %>%
  mutate(aspect_ratio = Height/Volume) %>%
  filter(Volume > 40) %>%
  summarise(mean_height = mean(Height),
            mean_volume = mean(Volume))
trees %>%
  group_by(Girth) %>%
  summarise(mean_height = mean(Height))


install.packages("nycflights13")
library(nycflights13) 
View(flights)
summary(flights)
dim(flights)

filter(flights, month == 7| month == 8| month == 9)
filter(flights, month)
arrange(flights, max(dep_delay))
arrange(flights, min(dep_delay))
# Latest flights
arrange(flights,desc(dep_delay))
#Earliest flights
arrange(flights,dep_delay)

#new_flights <- select(flights, month, day, dep_time)
mutate(flights,
       speed = distance / air_time * 60)
delays <- flights %>%
  group_by(origin) %>%
  summarise (
    delay = mean(arr_delay, na.rm = TRUE)
  )

my_people <- data.frame(
  name = c("Lee", "Smith", "Johnson", "Brown", "Davis"),
  age = c(28, 34, 25, 30, 27),
  gender = c("male", "male", "male", "female", "female"),
  commute = c(30, 45, 20, 35, 25))
head(my_people)
str(my_people)
summary(my_people)
plot(my_people$age, my_people$commute)

#Customize
plot(trees$Girth, trees$Volume)
plot(trees$Girth, trees$Volume,
     xlab = "Girth",
     ylab = "Volume",
     main = "Girth vs Volume",
     pch = ifelse(trees$Girth >15, 25, 19),
     col = ifelse(trees$Volume< 50, "blue","green")
     )

legend("bottomright", c("Outlier", "Common"),
       col = c("blue", "green"),
       pch = c(25,19))
png("plot.png")

phenotype <- read.csv("data.csv")

##Activity: Process your data using dplyr

library(dplyr)
View(my_people)
mutate(my_people,
       height = c(1.70, 2.01, 1.80, 1.11, 1.90),
       weight = c(55, 60, 70, 50, 57))
View(my_people)
arrange(my_people, age)
arrange(my_people, desc(age))

update_people <- my_people %>%
  mutate(height = c(1.70, 2.01, 1.80, 1.11, 1.90),
         weight = c(55, 60, 70, 50, 57)) %>%
 mutate(BMI = weight/(height^2)) %>%
  filter(BMI < 18.5) %>%
  group_by(BMI) %>%
  summarise(mean_height = mean(height),
                    mean_weight = mean(weight),
                        mean_age = mean(age,na.rm = TRUE)) 
head(update_people)
str(update_people) 
summary (update_people) 


####Activity: Process your data using dplyr
library(dplyr)
new_my_people <- my_people %>%
  mutate(height = c(1.70, 2.01, 1.80, 1.11, 1.90),
         weight = c(55, 60, 70, 50, 57)) %>%
  mutate(BMI = weight/(height^2)) 

head(new_my_people)
str(new_my_people)
summary (new_my_people)

write.csv(new_my_people, file = "Newdataframe.csv", row.names = TRUE)
View(new_my_people)
  
## Making plots
people <- read.csv("Newdataframe.csv")
plot(people$age,people$BMI,
     xlab = "age",
     ylab = "BMI",
     main = " age vs body_mass_index",
     pch = ifelse(people$age < 30, 19, 15),
     col = ifelse(people$age < 30, "blue", "pink"))
legend("bottomright", c("twenties", "thirties"),
       col = c("blue", "pink"),
       pch = c(19,15))

yield <- read.csv("Book.csv")
plot(yield$Treatment,yield$GY,
     xlab = "Varieties",
     ylab = "GY",
     main = " Varieties vs grain_yield",
     pch = ifelse(yield$Treatment == "WK1204", 19, 15),
     col = ifelse(yield$Treatment == "WK1204", "blue", "pink"))
legend("bottomright", c("WK1204", "Others"),
       col = c("blue", "pink"),
       pch = c(19,15))

-------------------------------------------------------------
  
  data(mtcars)
  scatter.smooth(x= mtcars$mpg, y= mtcars$disp, main = "disp ~ mpg")
  
  cor.test(mtcars$mpg, mtcars$disp)
##we can put correlation coefficient value (estimate) and p-value in scatter plot. in the right topmost corner  
  cor_result <- cor.test(mtcars$mpg, mtcars$disp)
cor_result$p.value 
cor_result$estimate

library(corrplot)
install.packages("corrplot")
library(corrplot)
##Corrplot correlates all the variables
corrplot(cor(mtcars))
#data should be the dataframe 
data()
data("HairEyeColor")
data("trees")
data("airquality")
data("Newdataframe")
data("DNase")
cor.test(airquality$Temp, airquality$Wind)
cor_result <- cor.test(airquality$Temp, airquality$Wind)
cor_result$p.value 
cor_result$estimate
corrplot(cor(airquality))


data(sleep)

# here group is factor variable
t.test(extra~group, data = sleep)
t.test(trees$Girth, mu = 5)

my_test <- data.frame (
  spike_length = c(10, 8, 11, 12, 14, 15, 12, 18, 16, 14, 16, 17),
  yield = c(5000, 3000, 2000, 4000, 5000, 4000, 4550, 6070, 4980, 5300, 5500, 4000)
 )
t.test(my_test$yield, mu = 6000)
#here  both entries are numeric
t.test(my_test$spike_length, my_test$yield)



#residuals is within group variance
res_aov <- aov(weight ~ group, data = PlantGrowth)
summary(res_aov)
# look at p adj
TukeyHSD(res_aov)

library(dplyr)
##rep repeats each element 4 times
my_test <- data.frame (
  spike_length = c(10, 8, 11, 12, 14, 15, 12, 18, 16, 14, 16, 17),
  yield = c(5000, 3000, 2000, 4000, 5000, 4000, 4550, 6070, 4980, 5300, 5500, 4000),
  group = rep(c("Trt1", "Trt2", "Trt3"), each= 4),
  value = rnorm(12)
)
     
res_aov2 <- aov(spike_length ~ group, data = my_test)
summary(res_aov2)
tukey_result <- TukeyHSD(res_aov2)
print(tukey_result)

# correlation is for equivalent variables but regression is for dependent and independent variable
# difference between observed and fitted value
 linear_mod <- lm(dist ~ speed, data=cars)
 summary(linear_mod)
 
 ## disp and qsec are independent variables
 linear_mod2 <- lm(mpg ~ disp + qsec, data=mtcars)
summary (linear_mod2) 
# Is there a correlation between petal length and petal width among 50 flowers?
data()
?iris
library(corrplot)
data("iris")
cor.test(iris$Petal.Length, iris$Petal.Width)

cor_petal <- cor.test(iris$Petal.Length, iris$Petal.Width)
cor_petal$p.value 
cor_petal$estimate
numeric_iris <- iris[, 1:4]
cor_matrix <- cor(numeric_iris)
corrplot(cor_matrix)

###################################################################
## three layers of ggplot: data, mapping and layer
install.packages("ggplot2")
library(ggplot2)
data(mpg)
ggplot(data = mpg)
ggplot(mpg, mapping = aes(x=cty, y = hwy))

##Layers of ggplot
ggplot(mpg, aes(cty, hwy))+
# to create scatterplot
geom_point()+
geom_smooth(formula = y ~ x, method = "lm")

ggplot(mpg, aes(cty, hwy))+
  geom_point()+
  labs(x= "City",
       y= "Highway",
       title = "City vs Highway")

ggplot(data = mpg)
ggplot(mpg, mapping = aes(x= cyl, y = hwy))
ggplot(mpg, aes(cyl, hwy))+
  geom_line()+
  labs(x= "cylinder",
       y= "Highway",
       title = "cylinder vs Highway")


??viridis

ggplot(mpg, aes(cty, hwy, color =class)) +
  geom_point()+
  scale_color_viridis_d()



?? color
ggplot(mpg, aes(cty, hwy, color= manufacturer))+
  geom_point()+
  scale_color_()
colors()

##aspect ratio
ggplot(mpg, aes(cty, hwy, color = class))+
  geom_point()+
  facet_grid(drv ~ year)+
  scale_color_viridis_d()+
  labs(x = "city",
       y = " Highway"
       )

ggplot(mpg, aes(cty,hwy, color = manufacturer))+
 geom_point()+
   coord_fixed(.5)+
  labs(x = "city",
       y = "Highway")

# Themes
ggplot(mpg, aes(cty, hwy, colour = class))+
  geom_point()+
  coord_fixed(.5)+
  labs(x = "city",
       y = "Highway")
theme_classic()+
theme(
  legend.position = "top",
  axis.line = element_line(linewidth = 2),
  axis.line = element_line(colour ="brown"),
  axis.title = element_text(size = 14),
  axis.text = element_text(size = 12),
  panel.grid.major = element_blank(),
  panel.grid.minor = element_blank()
)
##
ggplot(mpg, aes(cyl, hwy, colour = class, shape = factor(cyl))) +
  geom_point() +
  coord_fixed(.2)+
  labs(x = "Cylinder",
       y = "Highway",
       title = "Cylinder vs Highway")+
  theme_classic() +
  theme(
    legend.position = "right",
    axis.title = element_text(size = 10),   
    axis.text = element_text(size = 9),    
    panel.grid.major = element_blank(),     
    panel.grid.minor = element_blank(),
    strip.background = element_blank(),
     )
#########################################################
## Customize visualization
  library(ggplot2)
ggplot(mpg, aes(cyl, hwy))+
  geom_point(mapping = aes(colour = displ, shape = factor(cyl)))+
  geom_smooth(formula = y ~ x, method = "lm")+
  scale_colour_viridis_c()+
  facet_grid(year~drv)+
  coord_fixed(.2)+
  theme_light()+
  theme(panel.grid.minor = element_blank())

?mpg

ggplot(mpg, aes(cyl, hwy))+
  geom_dotplot (mapping = aes(colour = class, shape = factor(class)), binaxis = "y", stackdir = "center" )+
  labs(x = "Cylinder",
       y = "Highway",
       title = "Cylinder vs Highway")+
  coord_fixed()+
  facet_grid(year~fl)

ggplot(mpg, aes(class))+
  geom_bar(mapping = aes(class))

  #Boxplot for highway miles per gallon and class- type of car; facet using drive train and year

ggplot(mpg, aes(hwy, class))+
  geom_boxplot(mapping = aes(colour = class))+
  labs(x = "Highway miles per gallon",
       y = "Type of car",
       title = "Highway miles vs Car type",
       subtitle = "Frequency distribution")+
coord_fixed(3)+
  scale_color_viridis_d()+
  theme_gray()+
  theme(
    legend.position = "bottom",
    axis.line = element_line(linewidth = 0.75),
    axis.line.x.bottom = element_line(colour = "purple"),
    axis.line.y.left = element_line(colour = "purple"))
  


#stacked bar for highway miles per gallon and class
?barplot

ggplot(mpg, aes(x = hwy, fill = class))+
  geom_bar(position = "stack")+
  labs(x = " Highway miles per gallon")+
  facet_grid(year~drv)+
  theme_bw()+
  theme(
    legend.position = "bottom",
    axis.line = element_line(linewidth = 0.75),
    axis.line.x.bottom = element_line(colour = "purple"),
    axis.line.y.left = element_line(colour = "purple"))

## Discussion activity
data("economics")
?economics
ggplot(economics, aes(x = date, y = unemploy))+
  geom_line()+
  labs(x = "Month of data collection",
       y = "Number of unemployed in thousands",
       title = " US economic time series",
       subtitle = "Unemployment")+
  theme_bw()+
  theme(
    legend.position = "bottom",
    axis.line = element_line(linewidth = 0.75),
    axis.line.x.bottom = element_line(colour = "purple"),
    axis.line.y.left = element_line(colour = "purple"))
?ChickWeight

ggplot(ChickWeight, aes(x = Time, y = weight, group = Chick, color = Diet)) +
  geom_line() +
  facet_wrap(~ Diet) +
  labs(title = "Chick Weight vs Time",
       subtitle= "For different diets",
       x = "Time (Days)",
       y = "Weight (g)") +
  theme_bw()+
  theme(
    legend.position = "bottom",
    axis.line = element_line(linewidth = 0.75),
    axis.line.x.bottom = element_line(colour = "brown"),
    axis.line.y.left = element_line(colour = "brown"))




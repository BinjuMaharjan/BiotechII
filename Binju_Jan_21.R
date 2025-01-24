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

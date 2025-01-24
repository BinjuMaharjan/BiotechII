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
# to install gg plot
install.packages("ggplot2")
library


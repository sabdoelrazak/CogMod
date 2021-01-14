require(dplyr)
# Piping Tutorial

#f(g(x))
round(pi, 6)
pi %>% round(6)

#f(g(h(x)))

library(babynames)
library(dplyr)
library(magrittr)

data(babynames)

# without pipes: 
sum(select(filter(babynames,sex == "M", name=="Taylor"),n))
babynames %>% filter(sex =="M", name=="Taylor") %>%
  select(n) %>%
  sum()



#. = x : 
"Ceci n'est pas une pipe" %>%  gsub("une", "un", .)  # . == "ceci n'est pas un pipe"


# %$% : Exposes variable in data

iris <- read.csv(url("http://archive.ics.uci.edu/ml/machine-learning-databases/iris/iris.data"), header = FALSE)
names(iris) <- c("Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Width", "Species")
iris$Sepal.Length <- 
  iris$Sepal.Length %>%
  sqrt()

iris$Sepal.Length %<>% sqrt
iris$Sepal.Length


iris %>%
  subset(Sepal.Length > mean(Sepal.Length)) %$%
  cor(Sepal.Length, Sepal.Width)
library(readr)
library(microbenchmark)
library(dplyr)

flights_base <- read.csv(file = "Kitu/College/Junior Year/Fall Quarter/Stats 20/Homework/Lab 2/flights.csv")
flights_readr <- read_csv(file = "Kitu/College/Junior Year/Fall Quarter/Stats 20/Homework/Lab 2/flights.csv")

microbenchmark(
  read.csv(file = "Kitu/College/Junior Year/Fall Quarter/Stats 20/Homework/Lab 2/flights.csv"),
  times = 10, unit = "s"
)

microbenchmark(
  read_csv(file = "Kitu/College/Junior Year/Fall Quarter/Stats 20/Homework/Lab 2/flights.csv", progress = FALSE),
  times = 10, unit = "s"
)

View(flights_base)
View(flights_readr)

class(flights_base$origin)
class(flights_base$time_hour)
class(flights_readr$origin)
class(flights_readr$time_hour)

read_csv(file = "Kitu/college/Junior Year/Fall Quarter/Stats 20/Homework/Lab 2/airports.csv")
names(airports_new) <- c("faa", "lat", "lon")


library(dplyr)

# Load dataset
chick_weight <- read.csv("D:\\MAN\\MAN203\\datasets\\ChickWeight.csv")

# Select all records with time t
select_time <- function(t) {
  return(filter(chick_weight, Time==t))
}

select_time(0)

# Display summary statistics
display_summary <- function() {
  print(summary(select(chick_weight, weight)))
  print(mean(select(chick_weight, weight)))
  print(sd(select(chick_weight, weight)))
}

display_summary()

# Compute for LCL
compute_lcl <- function(w) { 
  return(mean(w) - 3*sd(w)) 
}

# Compute for UCL
compute_ucl <- function(w) {
  return(mean(w) + 3*sd(w))
}

chick_weight %>%
  group_by(Time) %>%
  summarize(mean=mean(weight), sd=sd(weight),
            low=min(weight), high=max(weight), 
            lcl=compute_lcl(weight), ucl=compute_ucl(weight))

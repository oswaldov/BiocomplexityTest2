##Load packages
library(ggplot2)
library(tidyverse)
library(gapminder)


##Load data
dat <- load("all_biocomplexity_data_merged.Rdata")
head(all_data)
summary(all_data)
attach(all_data)

##Unique locations
unique(all_data[c("Location")])

##filter by location and build graphs for mosquito captures by location

##For Culex with CO2 traps
co2cx <- ggplot(subset(all_data, Location %in% c("BRY","COO","CJR","SOL","PUU","CRA","WAI","MAL","NAN")),
                aes(x = Date, y = CO2Culex)) + facet_wrap( ~ Location) +
  geom_point(alpha = 0.3, position = "jitter") +
  ylim(0, 50)

co2cx + labs(x = "Year", y= "CO2 trap_Culex mosquitoes")

##For Aedes with CO2 traps
co2ae <- ggplot(subset(all_data, Location %in% c("BRY","COO","CJR","SOL","PUU","CRA","WAI","MAL","NAN")),
                aes(x = Date, y = CO2Aedes)) + facet_wrap( ~ Location) +
  geom_point(alpha = 0.3, position = "jitter") +
  ylim(0, 200)

co2ae + labs(x = "Year", y= "CO2 trap_Aedes mosquitoes")

##For Wyeomyia with CO2 traps
co2wy <- ggplot(subset(all_data, Location %in% c("BRY","COO","CJR","SOL","PUU","CRA","WAI","MAL","NAN")),
                aes(x = Date, y = CO2Wyeomyia)) + facet_wrap( ~ Location) +
  geom_point(alpha = 0.3, position = "jitter") +
  ylim(0, 50)

co2wy + labs(x = "Year", y= "CO2 trap_Wyeomyia mosquitoes")

##For Cules with Reiter traps
reiCx <- ggplot(subset(all_data, Location %in% c("BRY","COO","CJR","SOL","PUU","CRA","WAI","MAL","NAN")),
                aes(x = Date, y = ReiterCulex)) + facet_wrap( ~ Location) +
  geom_point(alpha = 0.3, position = "jitter") +
  ylim(0, 30)

reiCx + labs(x = "Year", y= "Reiter trap_Culex mosquitoes")

##For Aedes with Reiter traps
reiAe <- ggplot(subset(all_data, Location %in% c("BRY","COO","CJR","SOL","PUU","CRA","WAI","MAL","NAN")),
                aes(x = Date, y = ReiterAedes)) + facet_wrap( ~ Location) +
  geom_point(alpha = 0.3, position = "jitter") +
  ylim(0, 120)

reiAe + labs(x = "Year", y= "Reiter trap_Aedes mosquitoes")

##For Wyeomyia with Reiter traps
reiWy <- ggplot(subset(all_data, Location %in% c("BRY","COO","CJR","SOL","PUU","CRA","WAI","MAL","NAN")),
                aes(x = Date, y = ReiterWyeomyia)) + facet_wrap( ~ Location) +
  geom_point(alpha = 0.3, position = "jitter") +
  ylim(0, 10)

reiWy + labs(x = "Year", y= "Reiter trap_Wyeomyia mosquitoes")


library(ggplot2)
library(tidyverse)
library(gapminder)

dat <- read.csv("biocomplexitydata.csv")
head(dat)
summary(dat)
attach(dat)

##CULEX
## Culex mosquitoes with CO2 traps

mosqAbundance <- dat %>% 
  group_by(month, year, Location) %>%                            
  summarise(sum_mosquitos = sum(CO2Culex), mean_mosquitos = mean(CO2Culex))

head(mosqAbundance)

unique(mosqAbundance[c("month")])

##plot total capture of mosquitoes by month by location

co2cxmq <- ggplot(subset(mosqAbundance, Location %in% c("BRY","COO","CJR","SOL","PUU","CRA","WAI","MAL","NAN")),
                  aes(x = month, y = sum_mosquitos, color = factor(year))) + facet_wrap( ~ Location) +
  geom_point(alpha = 0.8) +
  ylim(0, 300) 

co2cxmq + scale_x_continuous(breaks=seq(1, 12, 1)) +
  
  scale_color_manual(values = c("2002" = "red", "2003" = "green3", "2004" = "blue")) +
  
  labs(x = "Month", y= "Number of Culex Mosquitoes_CO2 traps") +
  
  scale_fill_discrete(name = "Year")


## plot mean capture of culex mosquitoes by month by location

co2cxmqx <- ggplot(subset(mosqAbundance, Location %in% c("BRY","COO","CJR","SOL","PUU","CRA","WAI","MAL","NAN")),
                   aes(x = month, y = mean_mosquitos, color=factor(year))) + facet_wrap( ~ Location) +
  geom_point(alpha = 0.8) +
  ylim(0, 17) 

co2cxmqx + scale_x_continuous(breaks=seq(1, 12, 1)) +
  
  scale_color_manual(values = c("2002" = "red", "2003" = "green3", "2004" = "blue")) +
  
  labs(x = "Month", y= "Mean of Culex Mosquitoes_CO2 traps")


## Culex mosquitoes with REITER traps

mosqAbundance <- dat %>% 
  group_by(month, year, Location) %>%                            
  summarise(sum_mosquitos = sum(ReiterCulex), mean_mosquitos = mean(ReiterCulex))

unique(mosqAbundance[c("month")])

##plot total capture of mosquitoes by month by location
max(mosqAbundance$sum_mosquitos)

Recxmq <- ggplot(subset(mosqAbundance, Location %in% c("BRY","COO","CJR","SOL","PUU","CRA","WAI","MAL","NAN")),
                 aes(x = month, y = sum_mosquitos, color = factor(year))) + facet_wrap( ~ Location) +
  geom_point(alpha = 0.8) +
  ylim(0, 140) 

Recxmq + scale_x_continuous(breaks=seq(1, 12, 1)) +
  
  scale_color_manual(values = c("2002" = "red", "2003" = "green3", "2004" = "blue")) +
  
  labs(x = "Month", y= "Number of Culex Mosquitoes_Reiter traps")


## plot mean capture of culex mosquitoes by month by location

Recxmqx <- ggplot(subset(mosqAbundance, Location %in% c("BRY","COO","CJR","SOL","PUU","CRA","WAI","MAL","NAN")),
                  aes(x = month, y = mean_mosquitos, color=factor(year))) + facet_wrap( ~ Location) +
  geom_point(alpha = 0.8) +
  ylim(0, 2.5) 

Recxmqx + scale_x_continuous(breaks=seq(1, 12, 1)) +
  
  scale_color_manual(values = c("2002" = "red", "2003" = "green3", "2004" = "blue")) +
  
  labs(x = "Month", y= "Mean of Culex Mosquitoes_Reiter traps")


##AEDES
## Aedes mosquitoes with CO2 traps

mosqAbundance2 <- dat %>% 
  group_by(month, year, Location) %>%                            
  summarise(sum_mosquitos = sum(CO2Aedes), mean_mosquitos = mean(CO2Aedes))

##plot total capture of mosquitoes by month by location
co2aemq <- ggplot(subset(mosqAbundance2, Location %in% c("BRY","COO","CJR","SOL","PUU","CRA","WAI","MAL","NAN")),
                  aes(x = month, y = sum_mosquitos, color = factor(year))) + facet_wrap( ~ Location) +
  geom_point(alpha = 0.8) +
  ylim(0, 1250) 

co2aemq + scale_x_continuous(breaks=seq(1, 12, 1)) +
  
  scale_color_manual(values = c("2002" = "red", "2003" = "green3", "2004" = "blue")) +
  
  labs(x = "Month", y= "Number of Aedes Mosquitoes_CO2 traps") 


## plot mean capture of aedes mosquitoes by month by location

co2aemqx <- ggplot(subset(mosqAbundance2, Location %in% c("BRY","COO","CJR","SOL","PUU","CRA","WAI","MAL","NAN")),
                   aes(x = month, y = mean_mosquitos, color=factor(year))) + facet_wrap( ~ Location) +
  geom_point(alpha = 0.8) +
  ylim(0, 45) 

co2aemqx + scale_x_continuous(breaks=seq(1, 12, 1)) +
  
  scale_color_manual(values = c("2002" = "red", "2003" = "green3", "2004" = "blue")) +
  
  labs(x = "Month", y= "Mean of Aedes Mosquitoes_CO2 traps")



## Aedes mosquitoes with REITER traps

mosqAbundance2R <- dat %>% 
  group_by(month, year, Location) %>%                            
  summarise(sum_mosquitos = sum(ReiterAedes), mean_mosquitos = mean(ReiterAedes))

head(mosqAbundance2R)

unique(mosqAbundance2R[c("month")])

##plot total capture of mosquitoes by month by location
max(mosqAbundance2R$sum_mosquitos)

Reaemq <- ggplot(subset(mosqAbundance2R, Location %in% c("BRY","COO","CJR","SOL","PUU","CRA","WAI","MAL","NAN")),
                 aes(x = month, y = sum_mosquitos, color = factor(year))) + facet_wrap( ~ Location) +
  geom_point(alpha = 0.8) +
  ylim(0, 500) 

Reaemq + scale_x_continuous(breaks=seq(1, 12, 1)) +
  
  scale_color_manual(values = c("2002" = "red", "2003" = "green3", "2004" = "blue")) +
  
  labs(x = "Month", y= "Number of Aedes Mosquitoes_Reiter traps")


## plot mean capture of culex mosquitoes by month by location

Reaemqx <- ggplot(subset(mosqAbundance2R, Location %in% c("BRY","COO","CJR","SOL","PUU","CRA","WAI","MAL","NAN")),
                  aes(x = month, y = mean_mosquitos, color=factor(year))) + facet_wrap( ~ Location) +
  geom_point(alpha = 0.8) +
  ylim(0, 16) 

Reaemqx + scale_x_continuous(breaks=seq(1, 12, 1)) +
  
  scale_color_manual(values = c("2002" = "red", "2003" = "green3", "2004" = "blue")) +
  
  labs(x = "Month", y= "Mean of Aedes Mosquitoes_Reiter traps")



##WYEOMYIA
## Aedes mosquitoes with CO2 traps

mosqAbundanceW <- dat %>% 
  group_by(month, year, Location) %>%                            
  summarise(sum_mosquitos = sum(CO2Wyeomyia), mean_mosquitos = mean(CO2Wyeomyia))


##plot total capture of mosquitoes by month by location

co2wymq <- ggplot(subset(mosqAbundanceW, Location %in% c("BRY","COO","CJR","SOL","PUU","CRA","WAI","MAL","NAN")),
                  aes(x = month, y = sum_mosquitos, color = factor(year))) + facet_wrap( ~ Location) +
  geom_point(alpha = 0.8) +
  ylim(0, 225) 

co2wymq + scale_x_continuous(breaks=seq(1, 12, 1)) +
  
  scale_color_manual(values = c("2002" = "red", "2003" = "green3", "2004" = "blue")) +
  
  labs(x = "Month", y= "Number of Wyeomyia Mosquitoes_CO2 traps") 


## plot mean capture of aedes mosquitoes by month by location

co2wymqx <- ggplot(subset(mosqAbundanceW, Location %in% c("BRY","COO","CJR","SOL","PUU","CRA","WAI","MAL","NAN")),
                   aes(x = month, y = mean_mosquitos, color=factor(year))) + facet_wrap( ~ Location) +
  geom_point(alpha = 0.8) +
  ylim(0, 4.5) 

co2wymqx + scale_x_continuous(breaks=seq(1, 12, 1)) +
  
  scale_color_manual(values = c("2002" = "red", "2003" = "green3", "2004" = "blue")) +
  
  labs(x = "Month", y= "Mean of Wyeomyia Mosquitoes_CO2 traps")



## Wyeomyia mosquitoes with REITER traps

mosqAbundanceWR <- dat %>% 
  group_by(month, year, Location) %>%                            
  summarise(sum_mosquitos = sum(ReiterWyeomyia), mean_mosquitos = mean(ReiterWyeomyia))


##plot total capture of mosquitoes by month by location
max(mosqAbundanceWR$sum_mosquitos)

Rewymq <- ggplot(subset(mosqAbundanceWR, Location %in% c("BRY","COO","CJR","SOL","PUU","CRA","WAI","MAL","NAN")),
                 aes(x = month, y = sum_mosquitos, color = factor(year))) + facet_wrap( ~ Location) +
  geom_point(alpha = 0.8) +
  ylim(0, 15) 

Rewymq + scale_x_continuous(breaks=seq(1, 12, 1)) +
  
  scale_color_manual(values = c("2002" = "red", "2003" = "green3", "2004" = "blue")) +
  
  labs(x = "Month", y= "Number of Wyeomyia Mosquitoes_Reiter traps")


## plot mean capture of culex mosquitoes by month by location

Rewymqx <- ggplot(subset(mosqAbundanceWR, Location %in% c("BRY","COO","CJR","SOL","PUU","CRA","WAI","MAL","NAN")),
                  aes(x = month, y = mean_mosquitos, color=factor(year))) + facet_wrap( ~ Location) +
  geom_point(alpha = 0.8) +
  ylim(0, 0.2) 


Rewymqx + scale_x_continuous(breaks=seq(1, 12, 1)) +
  
  scale_color_manual(values = c("2002" = "red", "2003" = "green3", "2004" = "blue")) +
  
  labs(x = "Month", y= "Mean of Wyeomyia Mosquitoes_Reiter traps")



dat <- read.csv("biocomplexitydata.csv")
head(dat)
summary(dat)
attach(dat)

##Check for percentage of zeros
##Check for zero-inflated data whole data set
100*sum(dat$CO2Culex == 0)/nrow(dat)

100*sum(dat$ReiterCulex == 0)/nrow(dat)


##Check for zero-inflated data for BRY
datBRY <- dat[which(dat$Location=="BRY"), 2:98]
head(datBRY)
dim(datBRY)

100*sum(datBRY$CO2Culex == 0)/nrow(datBRY)

100*sum(datBRY$ReiterCulex == 0)/nrow(datBRY)

##Check for zero-inflated data for CJR
datCJR <- dat[which(dat$Location=="CJR"), 2:98]

100*sum(datCJR$CO2Culex == 0)/nrow(datCJR)

100*sum(datCJR$ReiterCulex == 0)/nrow(datCJR)


##Check for zero-inflated data for COO
datCOO <- dat[which(dat$Location=="COO"), 2:98]

100*sum(datCOO$CO2Culex == 0)/nrow(datCOO)

100*sum(datCOO$ReiterCulex == 0)/nrow(datCOO)

##Check for zero-inflated data for CRA
datCRA <- dat[which(dat$Location=="CRA"), 2:98]

100*sum(datCRA$CO2Culex == 0)/nrow(datCRA)

100*sum(datCRA$ReiterCulex == 0)/nrow(datCRA)

##Check for zero-inflated data for mal
datMAL <- dat[which(dat$Location=="MAL"), 2:98]

100*sum(datMAL$CO2Culex == 0)/nrow(datMAL)

100*sum(datMAL$ReiterCulex == 0)/nrow(datMAL)


##Check for zero-inflated data for NAN
datNAN <- dat[which(dat$Location=="NAN"), 2:98]

100*sum(datNAN$CO2Culex == 0)/nrow(datNAN)

100*sum(datNAN$ReiterCulex == 0)/nrow(datNAN)

##Check for zero-inflated data for PUU
datPUU <- dat[which(dat$Location=="PUU"), 2:98]

100*sum(datPUU$CO2Culex == 0)/nrow(datPUU)

100*sum(datPUU$ReiterCulex == 0)/nrow(datPUU)

##Check for zero-inflated data for SOL
datSOL <- dat[which(dat$Location=="SOL"), 2:98]

100*sum(datSOL$CO2Culex == 0)/nrow(datSOL)

100*sum(datSOL$ReiterCulex == 0)/nrow(datSOL)

##Check for zero-inflated data for WAI
datWAI <- dat[which(dat$Location=="WAI"), 2:98]

100*sum(datWAI$CO2Culex == 0)/nrow(datWAI)

100*sum(datWAI$ReiterCulex == 0)/nrow(datWAI)



##Check for zeros for Aedes species


##Check for percentage of zeros
##Check for zero-inflated data whole data set
100*sum(dat$CO2Aedes == 0)/nrow(dat)

100*sum(dat$ReiterAedes == 0)/nrow(dat)


##Check for zero-inflated data for BRY
datBRY <- dat[which(dat$Location=="BRY"), 2:98]
head(datBRY)
dim(datBRY)

100*sum(datBRY$CO2Aedes == 0)/nrow(datBRY)

100*sum(datBRY$ReiterAedes == 0)/nrow(datBRY)

##Check for zero-inflated data for CJR
datCJR <- dat[which(dat$Location=="CJR"), 2:98]

100*sum(datCJR$CO2Aedes == 0)/nrow(datCJR)

100*sum(datCJR$ReiterAedes == 0)/nrow(datCJR)


##Check for zero-inflated data for COO
datCOO <- dat[which(dat$Location=="COO"), 2:98]

100*sum(datCOO$CO2Aedes == 0)/nrow(datCOO)

100*sum(datCOO$ReiterAedes == 0)/nrow(datCOO)

##Check for zero-inflated data for CRA
datCRA <- dat[which(dat$Location=="CRA"), 2:98]

100*sum(datCRA$CO2Aedes == 0)/nrow(datCRA)

100*sum(datCRA$ReiterAedes == 0)/nrow(datCRA)

##Check for zero-inflated data for mal
datMAL <- dat[which(dat$Location=="MAL"), 2:98]

100*sum(datMAL$CO2Aedes == 0)/nrow(datMAL)

100*sum(datMAL$ReiterAedes == 0)/nrow(datMAL)


##Check for zero-inflated data for NAN
datNAN <- dat[which(dat$Location=="NAN"), 2:98]

100*sum(datNAN$CO2Aedes == 0)/nrow(datNAN)

100*sum(datNAN$ReiterAedes == 0)/nrow(datNAN)

##Check for zero-inflated data for PUU
datPUU <- dat[which(dat$Location=="PUU"), 2:98]

100*sum(datPUU$CO2Aedes == 0)/nrow(datPUU)

100*sum(datPUU$ReiterAedes == 0)/nrow(datPUU)

##Check for zero-inflated data for SOL
datSOL <- dat[which(dat$Location=="SOL"), 2:98]

100*sum(datSOL$CO2Aedes == 0)/nrow(datSOL)

100*sum(datSOL$ReiterAedes == 0)/nrow(datSOL)

##Check for zero-inflated data for WAI
datWAI <- dat[which(dat$Location=="WAI"), 2:98]

100*sum(datWAI$CO2Aedes == 0)/nrow(datWAI)

100*sum(datWAI$ReiterAedes == 0)/nrow(datWAI)


##Check for zeros for Wyeomyia species


##Check for percentage of zeros
##Check for zero-inflated data whole data set
100*sum(dat$CO2Wyeomyia == 0)/nrow(dat)

100*sum(dat$ReiterWyeomyia == 0)/nrow(dat)


##Check for zero-inflated data for BRY
datBRY <- dat[which(dat$Location=="BRY"), 2:98]
head(datBRY)
dim(datBRY)

100*sum(datBRY$CO2Wyeomyia == 0)/nrow(datBRY)

100*sum(datBRY$ReiterWyeomyia == 0)/nrow(datBRY)

##Check for zero-inflated data for CJR
datCJR <- dat[which(dat$Location=="CJR"), 2:98]

100*sum(datCJR$CO2Wyeomyia == 0)/nrow(datCJR)

100*sum(datCJR$ReiterWyeomyia == 0)/nrow(datCJR)


##Check for zero-inflated data for COO
datCOO <- dat[which(dat$Location=="COO"), 2:98]

100*sum(datCOO$CO2Wyeomyia == 0)/nrow(datCOO)

100*sum(datCOO$ReiterWyeomyia == 0)/nrow(datCOO)

##Check for zero-inflated data for CRA
datCRA <- dat[which(dat$Location=="CRA"), 2:98]

100*sum(datCRA$CO2Wyeomyia == 0)/nrow(datCRA)

100*sum(datCRA$ReiterWyeomyia == 0)/nrow(datCRA)

##Check for zero-inflated data for MAL
datMAL <- dat[which(dat$Location=="MAL"), 2:98]

100*sum(datMAL$CO2Wyeomyia == 0)/nrow(datMAL)

100*sum(datMAL$ReiterWyeomyia == 0)/nrow(datMAL)


##Check for zero-inflated data for NAN
datNAN <- dat[which(dat$Location=="NAN"), 2:98]

100*sum(datNAN$CO2Wyeomyia == 0)/nrow(datNAN)

100*sum(datNAN$ReiterWyeomyia == 0)/nrow(datNAN)

##Check for zero-inflated data for PUU
datPUU <- dat[which(dat$Location=="PUU"), 2:98]

100*sum(datPUU$CO2Wyeomyia == 0)/nrow(datPUU)

100*sum(datPUU$ReiterWyeomyia == 0)/nrow(datPUU)

##Check for zero-inflated data for SOL
datSOL <- dat[which(dat$Location=="SOL"), 2:98]

100*sum(datSOL$CO2Wyeomyia == 0)/nrow(datSOL)

100*sum(datSOL$ReiterWyeomyia == 0)/nrow(datSOL)

##Check for zero-inflated data for WAI
datWAI <- dat[which(dat$Location=="WAI"), 2:98]

100*sum(datWAI$CO2Wyeomyia == 0)/nrow(datWAI)

100*sum(datWAI$ReiterWyeomyia == 0)/nrow(datWAI)

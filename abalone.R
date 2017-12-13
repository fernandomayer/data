##======================================================================
## Abalone dataset
##======================================================================

url <- "https://archive.ics.uci.edu/ml/machine-learning-databases/abalone/abalone.data"
da <- read.table(url, header = FALSE,
                 sep = ",", dec = ".")
str(da)

## 7. Attribute information:

##    Given is the attribute name, attribute type, the measurement unit and a
##    brief description.  The number of rings is the value to predict: either
##    as a continuous value or as a classification problem.

## 	Name		Data Type	Meas.	Description
## 	----		---------	-----	-----------
## 	Sex		nominal			M, F, and I (infant)
## 	Length		continuous	mm	Longest shell measurement
## 	Diameter	continuous	mm	perpendicular to length
## 	Height		continuous	mm	with meat in shell
## 	Whole weight	continuous	grams	whole abalone
## 	Shucked weight	continuous	grams	weight of meat
## 	Viscera weight	continuous	grams	gut weight (after bleeding)
## 	Shell weight	continuous	grams	after being dried
## 	Rings		integer			+1.5 gives the age in years

names(da) <- c("Sexo",
               "Comprimento",
               "Diametro",
               "Altura",
               "Peso.total",
               "Peso.carne",
               "Peso.viscera",
               "Peso.concha",
               "Aneis")
str(da)
plot(da)

write.table(da, "abalone.csv",
            col.names = TRUE, row.names = FALSE,
            sep = ",", dec = ".")

## ## Insere areas
## nA <- round(nrow(da) * 0.2, 0)
## nB <- round(nrow(da) * 0.22, 0)
## nC <- round(nrow(da) * 0.3, 0)
## nD <- round(nrow(da) * 0.28, 0)
## sum(nA, nB, nC, nD)

## da$Area <- as.factor(rep(LETTERS[1:4], times = c(nA, nB, nC, nD)))

## bwplot(Aneis ~ Sexo | Area, data = da)

## boxplot(Aneis ~ Sexo, data = da)
## boxplot(Aneis ~ Area, data = da)

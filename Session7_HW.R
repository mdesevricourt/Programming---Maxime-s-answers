#Homework 7
getwd()
Airplane = read.csv("Airplane_Crashes_and_Fatalities_Since_1908.CSV")
head(Airplane)
colnames(Airplane) #print column names

summary(Airplane)
#Moscow, Sao Paulo and Rio de Janeiro are the most common places for airplanes to crash. 
#THe number of people aboard ranges from 0 to 5, with median 13 and mean 27 whereas the
#number of fatalities ranges from 0 to 583, with meadian 9 and mean 20.07.


#Import measurements.csv file

Data = read.csv("~/Documents/BIOL_432/BIOL432_Assignment1/measurements.csv")

#Load dplyr 

library("dplyr")

#Create new measurement file with volume column 

measurements = Data %>% mutate(volume=(Limb_Length*Limb_Width))


#Create new measurement.csv file that will overwrite the original

write.csv(measurements, "~/Documents/BIOL_432/BIOL432_Assignment1/measurements.csv", row.names = TRUE)

#Import measurements.csv file

Data = read.csv("~/Documents/BIOL_432/BIOL432_Assignment1/measurements.csv")

#Load dplyr 

library("dplyr")

#Create new measurement file with volume column. Use volume of cylinder equation pi*r*h^2 (r = Limb_Width/2, h = Limb_Length)

measurements = Data %>% mutate(volume=((pi)*((Limb_Width/2)^2)*(Limb_Length))

#Check new data frame to ensure it is properly formatted

head(measurements)
tail(measurements)


#Create new measurement.csv file that will overwrite the original

write.csv(measurements, "~/Documents/BIOL_432/BIOL432_Assignment1/measurements.csv", row.names = TRUE)


#Create a vector with 100 species names randomly selected from a vector of 5 names

Organism = sample(c("Phascolarctos cinereus", "Vombatus ursinus", "Macropus giganteus", "Sarcophilus harrisii", "Petaurus breviceps"), 100, replace = TRUE)

#Create a vector with 100 limb width values randomly selected from a normal distribution

Limb_Width = rnorm(100, mean = 10, sd = 3)

#Ensure all values are non-zero and positive

Limb_Width > 0

#Create a vector with 100 limb length values randomly selected from a normal distribution

Limb_Length = rnorm(100, mean = 30, sd = 10)

#Ensure all values are non-zero and positive

Limb_Length > 0

#Create a vector with 100 observer names randomly selected from a vector of 3 names

Observer = sample(c("Mike", "Jon", "Mary"), 100, replace = TRUE)

#Combine all above vectors to make "Measurements" Data frame

measurements = data.frame(Organism, Limb_Width, Limb_Length, Observer)

#Check new data frame to ensure it is properly formatted

head(measurements)
tail(measurements)

#Export measurements data frame as a .csv file

write.csv(measurements, "~/Documents/BIOL_432/BIOL432_Assignment1/measurements.csv", row.names = TRUE)

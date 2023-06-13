# Indices for each session are available at https://research.equisenseapi.com/
# Then, file.csv are stored on my computer in the "Documents" folder
setwd("C:/Users/HP_9470m/Documents/Sarasota_Equisense")
motion <- read.csv2("Sarasota_28-6-2020_16h43_motion.csv",
                     h = T,
                     sep = ",")

#### Here is the test zone ####

head(motion)
summary(motion)

table(motion$symmetry)
motion$symmetry <- as.numeric(motion$symmetry)
summary(motion$symmetry)

motion <- motion[!motion$symmetry == "NaN",]
table(motion$symmetry, useNA = "always")

plot(as.numeric(motion$symmetry),
                col = ifelse(as.numeric(motion$symmetry) <= 5, "red", "green"))

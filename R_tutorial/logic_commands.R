# lets first load the dataset
data <- read.table('R_tutorial/LungCapData.txt', header=T, sep='\t')

# we can make masks in the following way
femsmokemask <- data$Gender=='female' & data$Smoke=='yes'

# can add the femsmokemask object to the data as a col by 
# using the cbind function
data2 <- cbind(data, femsmokemask)
data2

# also, to remove all objects from R workspace, use following
# command
rm(list=ls())
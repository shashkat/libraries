# lets first read in the LungCap data
data <- read.table('R_tutorial/LungCapData.txt', sep='\t', header=T)
data

# confirming if the categorical cols are factor type
summary(data) # they are not

# converting the categorical cols to factor type
data$Smoke <- as.factor(data$Smoke)
data$Gender <- as.factor(data$Gender)
data$Caesarean <- as.factor(data$Caesarean)

# checking summary again
summary(data)

# lets find the mean of ages for all females
mean(data$Age[data$Gender=='female'])

# lets make a subset of the dataset which has only females
femdata <- data[data$Gender == 'female', ]

# getting the subset of data with all males above age 15
maleabove15 <- data[data$Gender == 'male' & data$Age > 15, ]
maleabove15

# just checking dims
dim(maleabove15)











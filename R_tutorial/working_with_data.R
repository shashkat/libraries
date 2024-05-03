# now, we will import a dataset and save it in a variable
# and work with it

x <- read.table('R_tutorial/LungCapData.txt', header = T, sep = '\t')
x

# check the dimensions of x
dim(x)

# get a top level view of x
head(x)

# get a bottom level view of x
tail(x)

# can check the names of the variables (cols) in the dataframe 
# using the names command
names(x)

# extracting a variable (col) from x
x$LungCap

# calculating the mean of any col
mean(x$Age)

# if we access Age col, R will give an error
Age

# if we want to use the cols of the dataset many times, we can
# attach it so that R recognizes each of its cols as a variable/object
# and it becomes easy to work with them
# a downside is that this consumes more memory and the variables 
# be overwritten more easily
attach(x)

# now can calculate age more easily
mean(Age)

# can detach the dataset by:
detach(x)

# lets attach it again and work on the cols of x
attach(x)

# find the type (class) of each col of x (can call them variables)

names(x)
class(Age)
class(LungCap)
class(Height)
class(Smoke)
class(Gender)
class(Caesarean)

# technically Caesarean, Smoke and Gender should be factor variables
# (vectors), hence we can tell R to treat them like that:
Caesarean <- as.factor(Caesarean)
Gender <- as.factor(Gender)
Smoke <- as.factor(Smoke)

# recheck class
class(Gender)

# for factor type variables, we can use levels func to determine which are 
# categories in it (factor is basically categorical variable)
levels(Caesarean)
levels(Gender)
levels(Smoke)

# can get basic summary stats for a dataset by using the summary function
summary(LungCapData)










# we will use read.csv function to read the csv file

help(read.csv)
?read.csv

# IMPORTING DATA

# instead of typing the name of the file, we could have also used
# file.choose() function which would open a dialog box to choose a file
x <- read.csv('R_tutorial/LungCapData.txt', header=T, sep='\t')
x

# can also use read.delim() which defaults to the tab separator so 
# don't need to specify sep for this file
y <- read.delim(file.choose(), header = T)
y

# EXPORTING DATA

# can simply use the function write.csv() to achieve this

write.csv(y, file="R_tutorial/written_lung_data.tsv")






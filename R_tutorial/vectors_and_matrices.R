# to create a vector, use the c() syntax

x <- c(1,2,3,4)
x
y <- c(2,4,4,5)
y

# can create a vector of integers like this:
ints <- 1:5
ints

# can also specify gap like this:
seq(from=1, to=10, by=2)

# creating a vector with repeated values 
rep(4, times=10)

# if two vectors are of the same length, we can add, sub, div, mul them 
# note that this is elementwise operation, and not standard linalg way
x+y
x-y
x*y
x/y

# can extract elements from a vector
y[1]

y[c(1,2)]

y[y<4]

# y<4 basically returns a boolean like: TRUE FALSE FALSE FALSE, which can be 
# used as a mask

# creating a matrix
m <- matrix(c(1,2,3,4,5,6,7,8,9), nrow = 3, byrow = TRUE)
m

# can slice matrix like this:
m[2,3]
m[c(2,3), 3]

# can notice that what is matrix and what is not
class(m[2,3])
class(m[c(2,3), 3])

# this will return a matrix and not vector
m[c(2,3), 3, drop = FALSE]
class(m[c(2,3), 3, drop = FALSE])

# also this will automatically be matrix as we are specifying more 
# than one rows and cols both
m[c(2,3), c(1,2)]
class(m[c(2,3), c(1,2)])

# multiplying each element of the matrix by a num
m*10


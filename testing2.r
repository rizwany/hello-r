#class
o <- c(11,21,31,41,51,61)
o[3]
o[2:4]
o[o>22]
u <- o >32
u
o[u]
#Matrix
m <- matrix(1:6, nrow=2, ncol = 3)
m
dim(m)
attributes(m)

dim(m) <- c(3,2)
m

m2 = matrix(1:6, 2, 3)
m
m2[2,2]
m[,2]

m[1,, drop=FALSE]

# ----------

x <- 1:3
y <- 10:12

cbind(x, y)

rbind(x, y)

#List
L <- list(1, "a", TRUE, 1+4i)

#Factors

F <- factor(c("yes", "yes", "no", "yes", "no"))
F
F[3]
table(F)

unclass(F)

#Factor levels
D <- factor(c("Mon", "Tue", "Wed", "Mon", "Fri","Mon", "Sun"),
            levels= c("Mon", "Tue", "Wed", "Thu", "Fri","Sat", "Sun"))
D
table(D)

unclass(D)

#NAN/missing values

v = c(1,2,3,NA, NaN, 5)
is.na(v)
is.nan(v)

#DataFrame & Names
z <- data.frame(d =1:4, rain = c(F, T, T, F))
row.names(z) <- c("A", "B","C","D")
z
nrow(z)
ncol(z)


q <- 1:3
q
names(q)

names(q) <- c("Col A", "Col B", "Col C")
names(q)


-------

r <- list(a=1:5, b="ID", c="car")    
r


r <- list(a=1:5, b="ID", c=c("F Name", "L name"))    
r
r$c
---
  
m <- matrix(1:4, nrow =2, ncol = 2)
dimnames(m) <- list(c("r1", "r2"), c("c1", "c2"))
m

#subseting list
w <- list(weekday = 1:4, rain_prob = 0.6)
w[1]
w[[1]]
w$rain_prob
w[["rain_prob"]]
w["rain_prob"]

w <- list(weekday = 1:4, rain_prob = 0.6, item = "Umbrella")
w[c(1, 3)]
name <- "weekday"
w[[name]]
w$name #wont work
w$weekday

#Nested List
a <- list(a= list(10,12,14), b=list(3.4, 2.8))
a[[c(1,3)]]
a[[c(2,1)]]

#Remove NA values
x <- c(1, 2, NA, 4, NA, 5)
bad <- is.na(x)
bad
x[!bad]

x <- c(1,2,NA,4,NA,6)
y <- c("a","b",NA,"d","NA","f")
good <- complete.cases(x, y)
good
x[good]
y[good]
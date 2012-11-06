#Assignment 3
names1 <- paste("ind",1:10, sep=" ")
names2 <- paste("ind",5:15, sep=" ")
names1 %in% names2
names2 %in% names1
which(names1 %in% names2)
which(names2 %in% names1)
#Assignment 3.1
divide <- function(number){
	res <- number/3 #define the function
	res
}
divide(100.3) #calculation
invisible(divide(100.3)) #prevent the result printed

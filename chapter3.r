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
#Q3.1
x <- 1:10
y <- 1:10
hypotenuse <- fuction(x,y){
	res <- sqrt(x*x + y*y) #hypotenuse of a right-angled triangle
	res
}
#Q3.2
x <- 1
y <- 1
while(x<=5){
	y <- y*x
	x <- x+1
}
y

faculty <- function(x){
	n <- 2
	result <- 1
	while(n <= x){
		result <- result*n
		n <- n + 1
	}
	return(result)
}

faculty <- function(x){
	if(x==1) return(1)
	return(x*faculty(x-1))
}


#Q3.3

#Assignment 3
> names1 <- paste("ind",1:10)
> names2 <- paste("ind",5:20)
> names1
 [1] "ind 1"  "ind 2"  "ind 3"  "ind 4"  "ind 5"  "ind 6"  "ind 7"  "ind 8" 
 [9] "ind 9"  "ind 10"
> names2
 [1] "ind 5"  "ind 6"  "ind 7"  "ind 8"  "ind 9"  "ind 10" "ind 11" "ind 12"
 [9] "ind 13" "ind 14" "ind 15" "ind 16" "ind 17" "ind 18" "ind 19" "ind 20"
> names1 %in% names2
 [1] FALSE FALSE FALSE FALSE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE
> which(names1 %in% names2) #show the index/serial number
[1]  5  6  7  8  9 10
> idx <- which(names1 %in% names2)
> names1[idx] #show the full name
[1] "ind 5"  "ind 6"  "ind 7"  "ind 8"  "ind 9"  "ind 10"
> idx <- which(names2 %in% names1)
> names2[idx]
[1] "ind 5"  "ind 6"  "ind 7"  "ind 8"  "ind 9"  "ind 10"
> 
> 
> for(x in 1:length(names1)){
+ if(any(names2 == names1[x])) cat(x,"\n")
+ }
5 
6 
7 
8 
9 
10 
> names1
 [1] "ind 1"  "ind 2"  "ind 3"  "ind 4"  "ind 5"  "ind 6"  "ind 7"  "ind 8" 
 [9] "ind 9"  "ind 10"
> length(names1)
[1] 10
> names1[1]
[1] "ind 1"
> names1[2]
[1] "ind 2"
> which(names1 %in% names2)
[1]  5  6  7  8  9 10

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
hypotenuse <- function(x,y){
	res <- sqrt(x*x + y*y) #hypotenuse of a right-angled triangle
}
res
#Q3.2
x <- 1
y <- 1
while(x<=5){ #not function
	y <- y*x
	x <- x+1
}
y

faculty <- function(x){ #function & while
	n <- 2
	result <- 1
	while(n <= x){
		result <- result*n
		n <- n + 1
	}
	return(result)
}

faculty <- function(x){ #function & return
	if(x==1) return(1)
	return(x*faculty(x-1))
}


#Q3.3

#Q3.4
prime <- function(x, verbose = FALSE){
	if(x < 0){
		if(verbose) cat(x,"is negtive")
		return(invisible(FALSE))
	}
	else if(x %in% 0:1){
		if(verbose) cat(x,"Not prime by definition")
		return(invisible(FALSE))
	}
	else if(x > 2 && x %% 2 == 0){
		if(verbose) cat(x,"is not a prime")
		return(invisible(FALSE))
	}else{
		r <- x %% n
		n <- 2
		while(r != 0 && n < (x/2)){
			n <- n+1
			r <- x %% n
		}
		if(n < (x/2)){
			if(verbose) cat(x,"is not a prime")
			return(invisible(FALSE))
		}else{
			if(verbose) cat(x,"is a prime!")
			return(invisible(TRUE))
		}
	}
}

res <- NULL
for(x in 1:1000){
	if(prime(x)){ 
		res <- c(res,x) 
	}
}


#Q3.5

led <- function(on){
	for(r in 1:10){
		for(c in 1:10){
			#deside if we need to put a - or a #
			cat("-")
		}
		cat("\n")
	}
	cat("\n")
}

led()
led(c(1:10,seq(3,100,10),seq(7,100,10),91:100))
led(sample(100,30))

matrix(1:100,10,10)
On <- function(x){
	S <- sample(100,30,replace=FALSE)
	for(x in 1:100){
		if(x %in% S){
			cat("#")
		}
		cat("-")
	}
}
matrix(On,10,10)


#Assignment3.2
#Q3.6
x <- matrix(runif(100,1,2.1),10,10)
dimnames(x)[[1]] <- letters[1:10]
x
row.mean <- apply(x, 1, mean) #means of each row
col.mean <- apply(x, 2, mean) #means of each column
row.mean
col.mean
ind.r <- which.max(row.mean) #show the index of the maximum among the means of each row
ind.c <- which.max(col.mean) #show the index of the maximum among the means of each column
which.max(row.mean)
which.max(col.mean)
row.mean[ind.r] #show the value of the maximum among the means of each row
col.mean[ind.c] #show the value of the maximum among the means of each column
col.max <- apply(x,2,max)
col.max

for(column in 1:ncol(x)){
	cat(column,"=",mean(x[,column]),"\n")
}

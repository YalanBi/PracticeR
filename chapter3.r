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
mar
 for(column in 1:ncol(x)){
+ cat(column,"=",mean(x[,column]),"\n")
+ }
#Q3.4
prime <- function(x, verbose = FALSE){ #verbose--details & descriptions,invisible--results
	round.x <- round(x,d=0)
	if(x == round.x){
		if(x < 0){
			if(verbose) cat(x,"is negtive.\n") #If the content of "if" is within one line, don't need"{}"
			invisible(FALSE)
		}
		else if(x %in% 0:1){
			if(verbose) cat(x,"Not prime by definition.\n")
			invisible(FALSE)
		}
		else if(x > 2 && x %% 2 == 0){
			if(verbose) cat(x,"is not a prime.\n")
			return(invisible(FALSE)) #return can be omitted
		}else{
			r <- x %% n
			n <- 2
			while(r != 0 && n < (x/2)){
				n <- n+1
				r <- x %% n
			}
			if(n < (x/2)){
				if(verbose) cat(x,"is not a prime.\n")
				return(invisible(FALSE))
			}else{
				if(verbose) cat(x,"is a prime!\n")
				return(invisible(TRUE))
			}
		}
	}else{
		if(verbose) cat(x,"is not a integer.\n")
		return(invisible(FALSE))
	}
}
#By return, the result of function has been stored and is able for later use.
> if(prime(5)){cat("Yeah\n")}else{cat("Neah\n")}
Yeah
#Because we say verbose=FALSE before, cat is invisible. Here say TRUE, so the description is visible.
> if(prime(5,TRUE)){cat("Yeah\n")}else{cat("Neah\n")}
5 is a prime!
Yeah
#Test how long the computer uses to test from 1 to 1000.
res <- NULL
for(x in 1:1000){
	if(prime(x)){ 
		res <- c(res,x) 
	}
}


#Q3.5

led <- function(on){
	for(row_ in 1:10){
		for(col_ in 1:10){#deside if we need to put a - or a #
			cat("-")
		}
		cat("\n")
	}
	cat("\n")
}
led()
led(col_(1:10,seq(3,100,10),seq(7,100,10),91:100))
led(sample(100,30))

led <- function(on){
	if(missing(on)) on <- sample(100,30,replace = FALSE)
	for(row_ in 1:10){ #the color purple means these letters represents a function in R
		for(col_ in 1:10){
			if(((row_-1)*10+col_) %in% on){ #deside if we need to put a - or a #
					cat("#")
				}else{
					cat("-")
				}
			}
		cat("\n")
	}
	cat("\n")
}
led()




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






> 1:10 #vector
 [1]  1  2  3  4  5  6  7  8  9 10
> t(t(1:10)) #matrix
      [,1]
 [1,]    1
 [2,]    2
 [3,]    3
 [4,]    4
 [5,]    5
 [6,]    6
 [7,]    7
 [8,]    8
 [9,]    9
[10,]   10
> matrix(1:100,10,10,byrow=TRUE) #byrow!
      [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9] [,10]
 [1,]    1    2    3    4    5    6    7    8    9    10
 [2,]   11   12   13   14   15   16   17   18   19    20
 [3,]   21   22   23   24   25   26   27   28   29    30
 [4,]   31   32   33   34   35   36   37   38   39    40
 [5,]   41   42   43   44   45   46   47   48   49    50
 [6,]   51   52   53   54   55   56   57   58   59    60
 [7,]   61   62   63   64   65   66   67   68   69    70
 [8,]   71   72   73   74   75   76   77   78   79    80
 [9,]   81   82   83   84   85   86   87   88   89    90
[10,]   91   92   93   94   95   96   97   98   99   100
> unlist(as.list(matrix(1:100,10,10))) #from matrix to vector
  [1]   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15  16  17  18  19  20  21  22  23  24  25  26
 [27]  27  28  29  30  31  32  33  34  35  36  37  38  39  40  41  42  43  44  45  46  47  48  49  50  51  52
 [53]  53  54  55  56  57  58  59  60  61  62  63  64  65  66  67  68  69  70  71  72  73  74  75  76  77  78
 [79]  79  80  81  82  83  84  85  86  87  88  89  90  91  92  93  94  95  96  97  98  99 100
> unlist(as.list(matrix(1:100,10,10,byrow=TRUE))) #byrow or not!!!
  [1]   1  11  21  31  41  51  61  71  81  91   2  12  22  32  42  52  62  72  82  92   3  13  23  33  43  53
 [27]  63  73  83  93   4  14  24  34  44  54  64  74  84  94   5  15  25  35  45  55  65  75  85  95   6  16
 [53]  26  36  46  56  66  76  86  96   7  17  27  37  47  57  67  77  87  97   8  18  28  38  48  58  68  78
 [79]  88  98   9  19  29  39  49  59  69  79  89  99  10  20  30  40  50  60  70  80  90 100
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
x <- matrix(1:100,10,10)
r.means <- function(x){
	for(column in 1:ncol(x)){
		cat("col",column,"=",mean(x[,column]),"\n")
	}
}
 
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
#Q3.6 calculate the means of each row and column
x <- matrix(runif(100,1,3),20,10)
dimnames(x)[[1]] <- letters[1:20]
> x
      [,1]     [,2]     [,3]     [,4]     [,5]     [,6]     [,7]     [,8]     [,9]    [,10]
a 2.289807 1.942389 1.659352 2.342535 1.792498 2.289807 1.942389 1.659352 2.342535 1.792498
b 1.643520 2.928935 1.156066 2.488015 2.894357 1.643520 2.928935 1.156066 2.488015 2.894357
c 1.902179 2.087146 2.828580 1.266289 1.019119 1.902179 2.087146 2.828580 1.266289 1.019119
d 1.631334 2.289492 1.278617 1.906321 1.525449 1.631334 2.289492 1.278617 1.906321 1.525449
e 1.868000 2.287507 2.570311 2.977820 2.285623 1.868000 2.287507 2.570311 2.977820 2.285623
f 1.775765 1.737894 2.007307 1.902667 2.108857 1.775765 1.737894 2.007307 1.902667 2.108857
g 1.933808 2.840998 2.569812 1.722534 1.212274 1.933808 2.840998 2.569812 1.722534 1.212274
h 2.943039 2.552501 1.642614 1.164176 2.958457 2.943039 2.552501 1.642614 1.164176 2.958457
i 2.471425 2.905291 2.863839 2.615445 1.897601 2.471425 2.905291 2.863839 2.615445 1.897601
j 1.738433 1.678366 1.923754 1.595127 2.735371 1.738433 1.678366 1.923754 1.595127 2.735371
k 2.540523 1.202164 2.406459 1.378794 2.048000 2.540523 1.202164 2.406459 1.378794 2.048000
l 2.209653 2.908320 2.758157 1.814754 1.466155 2.209653 2.908320 2.758157 1.814754 1.466155
m 2.014292 2.985320 1.413046 1.225496 2.893998 2.014292 2.985320 1.413046 1.225496 2.893998
n 1.569424 1.425303 1.427045 2.764777 1.309317 1.569424 1.425303 1.427045 2.764777 1.309317
o 2.240608 1.669663 2.009056 2.360190 2.187611 2.240608 1.669663 2.009056 2.360190 2.187611
p 1.655523 1.158333 2.748870 2.755292 2.610958 1.655523 1.158333 2.748870 2.755292 2.610958
q 2.717950 1.767708 2.966620 1.463257 1.933340 2.717950 1.767708 2.966620 1.463257 1.933340
r 1.936077 2.684428 2.112111 2.713025 2.692863 1.936077 2.684428 2.112111 2.713025 2.692863
s 2.121261 1.745829 1.994693 2.299427 2.954079 2.121261 1.745829 1.994693 2.299427 2.954079
t 2.640370 2.522193 2.772396 1.098488 2.601851 2.640370 2.522193 2.772396 1.098488 2.601851
> r.mean <- apply(x, 1, mean) #means of each row
> c.mean <- apply(x, 2, mean) #means of each column
> r.mean
       a        b        c        d        e        f        g        h        i        j        k        l 
2.005316 2.222179 1.820662 1.726243 2.397852 1.906498 2.055885 2.252158 2.550720 1.934210 1.915188 2.231408 
       m        n        o        p        q        r        s        t 
2.106430 1.699173 2.093425 2.185795 2.169775 2.427701 2.223058 2.327060 
> c.mean
 [1] 2.092149 2.165989 2.155435 1.992721 2.156389 2.092149 2.165989 2.155435 1.992721 2.156389
#Q3.7 which column has the highest mean
> ind.c <- which.max(c.mean) #show the index of the maximum among the means of each column
> which.max(c.mean)
[1] 2
> c.mean[ind.c] #show the value of the maximum among the means of each column
[1] 2.165989
> max(apply(x, 2, mean)) #as same as last line
[1] 2.165989
> x[,ind.c] #show each number in the column of the highest mean
       a        b        c        d        e        f        g        h        i        j        k        l 
1.942389 2.928935 2.087146 2.289492 2.287507 1.737894 2.840998 2.552501 2.905291 1.678366 1.202164 2.908320 
       m        n        o        p        q        r        s        t 
2.985320 1.425303 1.669663 1.158333 1.767708 2.684428 1.745829 2.522193
#Q3.8 within the column that has the highest mean, which is the maximum number
> which.max(x[,ind.c])
 m 
13
#Q3.9 within the column of the highest mean, which is the second maximum number
> maxofcol <- which.max(x[,ind.c])
> which.max(x[,ind.c][-maxofcol])
b 
2
#Q3.10 if the mean of columns is higher than 2, calculate the means of these columns
> t(apply(x, 2, mean))
         [,1]     [,2]     [,3]     [,4]     [,5]     [,6]     [,7]     [,8]     [,9]    [,10]
[1,] 2.092149 2.165989 2.155435 1.992721 2.156389 2.092149 2.165989 2.155435 1.992721 2.156389
> matrix_c <- t(apply(x, 2, mean))
> matrix_c
         [,1]     [,2]     [,3]     [,4]     [,5]     [,6]     [,7]     [,8]     [,9]    [,10]
[1,] 2.092149 2.165989 2.155435 1.992721 2.156389 2.092149 2.165989 2.155435 1.992721 2.156389
> which(matrix_c < 2)
[1] 4 9
> mincolmeans <- which(matrix_c < 2)
> matrix_c[mincolmeans]
[1] 1.992721 1.992721
> mean(matrix_c[-mincolmeans])
[1] 2.142491
> matrix_c[-mincolmeans]
[1] 2.092149 2.165989 2.155435 2.156389 2.092149 2.165989 2.155435 2.156389
#simpler one
> apply(x[,which(apply(x, 2, mean)>2)],2,mean)
[1] 2.092149 2.165989 2.155435 2.156389 2.092149 2.165989 2.155435 2.156389
mean(apply(x[,which(apply(x, 2, mean)>2)],2,mean))
[1] 2.142491





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
> unlist(as.list(matrix(1:100,10,10))) #from matrix to vector, notice the direction!
  [1]   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15  16  17  18  19  20  21  22  23  24  25  26
 [27]  27  28  29  30  31  32  33  34  35  36  37  38  39  40  41  42  43  44  45  46  47  48  49  50  51  52
 [53]  53  54  55  56  57  58  59  60  61  62  63  64  65  66  67  68  69  70  71  72  73  74  75  76  77  78
 [79]  79  80  81  82  83  84  85  86  87  88  89  90  91  92  93  94  95  96  97  98  99 100
> unlist(as.list(matrix(1:100,10,10,byrow=TRUE))) #byrow or not!!!
  [1]   1  11  21  31  41  51  61  71  81  91   2  12  22  32  42  52  62  72  82  92   3  13  23  33  43  53
 [27]  63  73  83  93   4  14  24  34  44  54  64  74  84  94   5  15  25  35  45  55  65  75  85  95   6  16
 [53]  26  36  46  56  66  76  86  96   7  17  27  37  47  57  67  77  87  97   8  18  28  38  48  58  68  78
 [79]  88  98   9  19  29  39  49  59  69  79  89  99  10  20  30  40  50  60  70  80  90 100
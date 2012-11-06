#Assigment 2.1
read.table("phenotypes.txt")
read.table("X:/Data/My Documents/phenotypes.txt")
 dirdata <- vector(length(dir()), mode="list")
> file_number <- 0
> for(x in dir()){
+ dirdata[[file_number]] <- read.table(file=x)
+ file_nmber = file_number+1
+ }
#show documents in current folder
dir()
#show txt documents
for(x in dir()){
	splitted <- strsplit(x,".",fixed=TRUE)	
	if(length(splitted[[1]]) == 2){
		if(splitted[[1]][2] == "txt") cat(x,"\n")
	}
}
#Q2.1
read.table("phenotypes.txt")
read.table("genotypes.txt")
#Q2.2
> dim(read.table("genotypes.txt"))
[1] 162 117
> read.table("genotypes.txt",nrows = 81)

#Assignment 2.2
sample(50:200,50,replace=FALSE)
runif(50,5,10)
rnorm(50,mean=0,sd=1)

#Assignment 2.3
write.table(matrix,file="mymatrix.txt",sep="\t")
for(x in 1:100){
	cat("Hello world\n",file="log.txt",append=TRUE)
}
#Q2.3
#sample
cat("sample\n",file="mymatrix.txt",append=TRUE)
write.table(matrix(sample(50:200,100,replace=FALSE),20,5),file="mymatrix.txt",sep="\t",append=TRUE)

> getwd()
[1] "X:/Data/My Documents"

#runif
cat("runif\n",file="mymatrix.txt",append=TRUE)
write.table(matrix(runif(100),20,5),file="mymatrix.txt",sep="\t",append=TRUE)

#rnorm
cat("rnorm\n",file="mymatrix.txt",append=TRUE)
write.table(matrix(rnorm(100,mean=5,sd=3),20,5),file="mymatrix.txt",sep="\t",append=TRUE)
#Q2.4
#Using a for loop
cur_line <- 1
num_printed <- 0
for(x in 1:10){
	cat(x," ")
	num_printed <- num_printed + 1
	if(cur_line == num_printed){
		cat("\n")
		cur_line <- cur_line + 1
		num_printed <- 0
	}
}

#Using a while loop
l <- 1
x <- 1
while(x < 10){
	for(np in 1:l){
		cat(x," ")
		x <- x + 1
	}
	cat("\n")
	l <- l+1
}

#Using two while loops
l <- 1
x <- 1
np <- 0
while(x < 10){
	while(np < l){
		cat(x," ")
		x <- x + 1
		np <- np+1
	}
	cat("\n")
	l <- l+1
	np <- 0
}
#Q2.5
> cat("\\I say:\"Escaping stauff is great.\"\\")
\I say:"Escaping stauff is great."

#Q2.6
diamond <- function(){
	l <- 1
	np <- 0
	while(l<3){
		while(np< (2-l)){
			cat(" ")
			np <- np+1
		}
		while(np< (7+l)){
			cat("#")
			np <- np+1
		}
		while(np < 9){
			cat(" ")
			np <- np+1
		}
		cat("\n")
		np <- 0
		l <- l+1
	}
	np <- 0
	while(l<7){
		while(np<l-1){
			cat(" ")
			np <- np+1
		}
		while(np<12-l){
			cat("#")
			np <- np+1
		}
		while(np<9){
			cat(" ")
			np <- np+1
		}
		cat("\n")
		np <- 0
		l <- l+1
	}
}
diamond()

largerthen <- function(x, n){
	if(x > n) return(TRUE)
	return(FALSE)
}

somestuff <- function(x, n, p){
  #do..stuff
  largerthen(x,n)
  #do some more stuff
  #return
}


for(x in 1:length(names1)){
	if(any(names2 == names1[x])) cat(x,"\n")
}

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
> which(names1 %in% names2)
[1]  5  6  7  8  9 10
> idx <- which(names1 %in% names2)
> names[idx]
Error in names[idx] : object of type 'builtin' is not subsettable
> names1[idx]
[1] "ind 5"  "ind 6"  "ind 7"  "ind 8"  "ind 9"  "ind 10"
> idx <- which(names2 %in% names1)
> names1[idx]
[1] "ind 1" "ind 2" "ind 3" "ind 4" "ind 5" "ind 6"
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
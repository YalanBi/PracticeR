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
		while(np<l-2){
			cat(" ")
			np <- np+1
		}
		while(np<11-l){
			cat("#")
			np <- np+1
		}
		while(np<8){
			cat(" ")
			np <- np+1
		}
		cat("\n")
		np <- 0
		l <- l+1
	}
}
diamond()

#Compare two numbers
largerthen <- function(x, n){
	if(x > n) return(TRUE)
	return(FALSE)
}
#Compare more numbers
somestuff <- function(x, n, p){
  #do..stuff
  largerthen(x,n)
  #do some more stuff
  #return
}
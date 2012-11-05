#Assigment 1.1
??sum
?lm
#Assigment 1.2
1:10 #One to ten
seq(1,10) #One to ten
seq(1,50,4) #One to fifty, with step of 4
cat("ind",1:10,sep=",")
cat("ind",seq(1,10,2),sep=",")
paste("ind",1:10,sep=" ")
> paste("A","B",1:10)
[1] "A B 1"  "A B 2"  "A B 3"  "A B 4"  "A B 5"  "A B 6"  "A B 7"  "A B 8"  "A B 9"  "A B 10"
> paste(c("A","B"),1:10)
[1] "A 1"  "B 2"  "A 3"  "B 4"  "A 5"  "B 6"  "A 7"  "B 8"  "A 9"  "B 10"
sqrt((1+5)/4)
12/2==6 #Comparison of numbers
12/2==3
1:10<7 #Comparison of vector and a number
seq(1,10,2)<7
1:10/7 #Add/Subtrract/Multiply/Divide a vector
1:10*1:10 #Add/Subtrract/Multiply/Divide a vector with a vector
1:10*seq(1,10,3)
1:10*seq(1,10,7)
matrix(2,3,5)
matrix(2,3,5)*3 #Matrices
#Assigment 1.3
data <- matrix(runif(50),10,5)
apply(data,1,mean) #Mean valume per row
apply(data,2,mean) #Mean valume per column
for(x in 1:100){
cat("Hello word\n") # \n: End of the line
if(x==42) cat("Yes 42\n")
}
cat("\"\\",file="log.txt",append = TRUE) #:)

#Q1.1
x <- runif(1)*100
if(0 < x){
  if(x <= 10){
	cat("OK ! x is between 0 and 10")
  }else{
	stop("x is larger then 10")
  }
}else{
	stop("Below 0")
}
#Q1.2
result <- 0
for(x in 1:1000){
	result <- result + x
}

result <- 0
x <- 1
while(x <= 1000){
	result <- result + x
	x <- x + 1
}

sum(1:1000)

#Q1.3
for(x in 1:12){
	for(h in 1:x){
		cat("#")
	}
	cat("\n")
}

for(x in 1:12){
	cat(rep("#",x),"\n",sep=" ")
}

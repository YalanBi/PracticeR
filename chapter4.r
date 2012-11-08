#Assigment 4.1
png(filename="myplot.png",bg="white")
image(matrix(rnorm(250),50,50),main="imagelexample",col=rainbow(10))
dev.off()
> getwd()
[1] "X:/Data/My Documents"

#Assigment 4.3
#Legend example
plot(sin(0:10),type="l",lty=1,col="red",lwd=2,main="Legend example")
points(cos(0:10),type="l",lty=2,col="green",lwd=2)
legend("topright",c("sin(x)","cos(x)"),lty=1:2,col=c("red","green"),lwd=2)
#Arrow example
x <- runif(12)
plot(x,pch=20,col="blue",main="Arrow example")
arrows(1,0,1,x[1]-0.01,col="red",lwd=2)
arrows(5,0,5,x[5]-0.01,col="red",lwd=2)

#Q4.1
image(read.table("genotypes.txt"),main="imagelexample",col=rainbow(10))
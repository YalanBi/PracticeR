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

box() #add a frame outside
grid() #something like lattice
> abline(0,1)
> arrows(0,0.5,0.3,0.5) #an arrow from (0,0.5) to (0.3,0.5)
> hist(rnorm(1000),col=rgb(1,0,0,0.5)) #rgb--right, green, blue, transparent, range from 0 to 1
> hist(rnorm(1000),col=rgb(0,1,0,0.1),add=TRUE) #add=TRUE

#Q4.1
geno <- read.table("genotypes.txt")
dim(geno)
class(geno)
geno <- as.matrix(geno) #as.matrix() change geno into a matrix
class(geno)
image() #generate "test.png"
png("test.png")
image(as.matrix(geno))
dev.off()

g2 <- apply(geno,2,as.numeric) #change into a matrix
dim(g2)
class(g2)

#Q4.2 trait distributions
pheno <- read.table("phenotypes.txt")
class(pheno)
boxplot(pheno,main = "boxplot(phenotype, horizontal = TRUE)",horizontal = TRUE)
boxplot(t(pheno), main = "boxplot(phenotype, horizontal = TRUE)",horizontal = TRUE)

#Q4.3
geno <- read.table("genotypes.txt")
geno <- as.matrix(geno)
heatmap(geno,Colv=NULL,scale=c("row", "column", "none"), na.rm = TRUE) #???
heatmap(apply(geno,2,as.numeric),Colv=NA)
heatmap(as.matrix(geno),Colv=NA,Rowv=NA)
res <- heatmap(as.matrix(geno),Colv=NA,keep.dendro=TRUE)
plot(res$Rowv)
res$Rowv
cut(res$Rowv,h=8)
unlist(cut(res$Rowv,h=8)$lower[[19]])
#Q4.4
geno <- read.table("genotypes.txt")
dim(geno)
plot(pheno[,1],pch=20,col="red")

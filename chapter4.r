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
hist(pheno[,5]) #Display Column 5 by histogram
hist(pheno[,5],breaks=20) #breaks -> the numbers of columns

#Q4.3
geno <- read.table("genotypes.txt")
geno <- as.matrix(geno)
heatmap(apply(geno,2,as.numeric),Colv=NA) #no dendrogram for col.
heatmap(as.matrix(geno),Colv=NA,Rowv=NA) #no dendrogram for col. and row
res <- heatmap(as.matrix(geno),Colv=NA,keep.dendro=TRUE) #store the dendrogram as a result
plot(res$Rowv) #only show the dendrogram
res$Rowv #summary of dendrogram--'dendrogram' with 2 branches and 162 members total, at height 9.899495
cut(res$Rowv,h=8) #divide into 2 parts--higher and lower than 8
unlist(cut(res$Rowv,h=8)$lower[[9]])
res <- heatmap(cor(t(as.matrix(geno)),use="pair"),Colv=NA,keep.dendro=TRUE) #correlation

#Q4.4
geno <- read.table("genotypes.txt")
dim(geno)
plot(pheno[,1],pch=20,col=c("red","green"))
plot(pheno[,1],pch=20,col=geno[,1])
res <- cbind(pheno[,1],geno[,1]) #form a new matrix
which(res[,2]==1)
res[which(res[,2]==1),]
boxplot(res[which(res[,2]==1),1], res[which(res[,2]==2),1])
#Assigment 6
y1 <- runif(100)*5+(1:100)*0.5
y2 <- runif(100)*20+(1:100)*0.01
x <- 1:100
lm(y1~x)
lm(y2~x)
estimatesy1 <- lm(y1~x)[[1]][1]+lm(y1~x)[[1]][2]*1:10
estimatesy1
estimatesy2 <- lm(y2~x)[[1]][1]+lm(y2~x)[[1]][2]*1:10
estimatesy2
plot(x,y1)
lines(x,lm(y1~x)[[1]][1]+lm(y1~x)[[1]][2]*x,col="green") #???
plot(x,y2)
lines(x,lm(y2~x)[[1]][1]+lm(y2~x)[[1]][2]*x,col="red")

r1 <- runif(100)*5
r2 <- runif(100)*5
t.test(r1,r2)$p.value #show the p-value of t-test

#Q6.1
geno <- read.table("genotypes.txt")
geno <- as.matrix(geno)
g1 <- which(geno[,1] == 1)
geno[g1,1]
g2 <- which(geno[,1] == 2)
geno[g2,1]

#Q6.2
p1 <- pheno[g1,1]
p2 <- pheno[g2,1]
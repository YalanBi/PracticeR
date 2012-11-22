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

#Q6.4 t-test is not robust enough!
> t.test(runif(1000,-0.5,0.5),rnorm(1000,m=0,sd=0.5))

        Welch Two Sample t-test

data:  runif(1000, -0.5, 0.5) and rnorm(1000, m = 0, sd = 0.5) 
t = 2.1642, df = 1618.792, p-value = 0.0306 #p-value<0.05, there are difference between these two, t-test gives the right answer!
alternative hypothesis: true difference in means is not equal to 0 
95 percent confidence interval:
 0.00366468 0.07456469 
sample estimates:
  mean of x   mean of y 
 0.02395599 -0.01515870 

> t.test(runif(1000,-0.5,0.5),rnorm(1000,m=0,sd=0.5))

        Welch Two Sample t-test

data:  runif(1000, -0.5, 0.5) and rnorm(1000, m = 0, sd = 0.5) 
t = -1.0494, df = 1600.842, p-value = 0.2941 #p-value>0.05, there are no difference between these two, t-test gives the WRONG answer!
alternative hypothesis: true difference in means is not equal to 0 
95 percent confidence interval:
 -0.05546119  0.01679986 
sample estimates:
   mean of x    mean of y 
-0.006537696  0.012792969

#Q6.1
geno <- read.table("genotypes.txt")
pheno <- read.table("phenotypes.txt")
#show the two groups of a specific marker---No.m
result <- vector("list",3) #define model & length for vector
for(m in 1:length(result)){ ##########for???
	idx_AA <- which(geno[,m]==1)
	idx_BB <- which(geno[,m]==2)
	result[[m]] <- list(idx_AA,idx_BB)
}
#show the two groups of No.p phenotype responded to No.m marker
pheno[result[[m]][[1]], p]
pheno[result[[m]][[2]], p]
# t-test
t.test(pheno[result[[m]][[1]], p],pheno[result[[m]][[2]], p])

##########Q6.123&5##########
geno <- read.table("genotypes.txt")
pheno <- read.table("phenotypes.txt")
markerMean_Pvalue <- function(geno, pheno, marker = 1, phenotype = 1){
	g1 <- which(geno[,marker] == 1)
	g2 <- which(geno[,marker] == 2)
	p1 <- mean(pheno[g1, phenotype],na.rm=TRUE)
	p2 <- mean(pheno[g2, phenotype],na.rm=TRUE)
	pvalue <- t.test(pheno[g1, phenotype],pheno[g2, phenotype])$p.value
	#cat("Marker",marker,"Mean:", p1,",", p2,";P-value:",pvalue,"\n")
	return(c(phenotype, marker, p1, p2, pvalue))
}
result <- NULL
for(p in 1:ncol(pheno)){
	cat("Phenotype",p,"\n")
	resultplot <- NULL
	for(m in 1:ncol(geno)){
	res <- markerMean_Pvalue(geno, pheno, m, p)
	resultplot <- rbind(resultplot,res)
	result <- rbind(result,res)
	filename <- paste("p",p,".png",sep="") #rename the file each time
	png(file=filename,bg="white")
	plot(resultplot[,3],col="red")
	points(resultplot[,4],col="green")
	}
}
result

#Q6.5 a vector of p-values between the two groups of each marker for phenotype 1
p <- 1
vec <- NULL
for(x in 1:ncol(geno)){
	g1 <- which(geno[,x] == 1)
	g2 <- which(geno[,x] == 2)
	vec <- c(vec,t.test(pheno[g1,p],pheno[g2,p])$p.value)
}
#show p-values by a plot
plot(vec,t='l')
abline(h=0.05,lty=2,col='orange') #add a line at the height of 0.05---> significant or not
abline(h=0.01,lty=2,col='green')
#a better display
plot(1-vec,t='l')
#a more better way for analysis
plot(-log10(vec),t='l')





#rbind#
#phenotype 1	#phenotype 2 #cbind#

#phenotype 3
t()
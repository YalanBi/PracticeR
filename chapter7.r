#Assigment 7
geno <- read.table("genotypes.txt")
pheno <- read.table("phenotypes.txt")
hist(pheno[,1],breaks=25)
#Q7.1do the cut-off
p <- 1
new_phenotype_matrix <- NULL
for(p in 1:ncol(pheno)){
	cutoff <- (max(pheno[,p],na.rm=T) * 0.10) + min(pheno[,p],na.rm=T) #min ensures that there would be elements in either Group NOT EXPRESSED or Group EXPRESSED
	newphenotype <- as.integer(pheno[,p] > cutoff, na.rm=T) #change T/F into 1/0
	cat(p,"Cut-off:",cutoff,"Group0:",sum(newphenotype==0,na.rm=T),"Group1:",sum(newphenotype==1,na.rm=T),"\n") #Group0->below cutoff, Group1->above cutoff; sum->how many individuals in a group
	new_phenotype_matrix <- cbind(new_phenotype_matrix,newphenotype)
	
}
dimnames(new_phenotype_matrix)[[2]]<- paste("pheno",1:24)
#Q7.2creat new pheno matrix.txt
geno <- read.table("genotypes.txt")
pheno <- read.table("phenotypes.txt")
#write.table(new_phenotype_matrix,file="new pheno matrix.txt",sep="\t")
newpheno <- read.table("new pheno matrix.txt")
#Q7.3correlation between pheno and newpheno??????????
t.test(pheno,newpheno)
#Q7.4
pheno_Pvalue <- function(geno, pheno, marker = 1, phenotype = 1){
	g1 <- which(geno[,marker] == 1)
	g2 <- which(geno[,marker] == 2)
	pvalue <- t.test(pheno[g1, phenotype],pheno[g2, phenotype])$p.value
	pvalue_new <- t.test(newpheno[g1, phenotype],newpheno[g2, phenotype])$p.value
	#cat("Marker",marker,";P-value:",pvalue,"pvalue_new:",pvalue_new,"\n")
	return(c(phenotype, marker, pvalue, pvalue_new))
}

for(p in 1:ncol(pheno)){
	resultplot <- NULL
	for(m in 1:ncol(geno)){
	res <- pheno_Pvalue(geno, pheno, m, p)
	resultplot <- rbind(resultplot,res)
	filename <- paste("p&np",p,".png",sep="") #rename the file each time
	png(file=filename,bg="white")
	plot(-log10(resultplot[,4]),t='l',col="red")
	points(-log10(resultplot[,3]),col="blue",type='l') ############p&np11 12 13###########
	dev.off()
	}
}




for(p in 1:1){
	resultplot <- NULL
	for(m in 1:ncol(geno)){
	res <- pheno_Pvalue(geno, pheno, m, p)
	resultplot <- rbind(resultplot,res)
	plot(-log10(resultplot[,4]),t='l',col="red")
	points(-log10(resultplot[,3]),col=geno[,1]) ############p&np11 12 13###########
	}
}

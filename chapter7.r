#Assigment 7
pheno <- read.table("phenotypes.txt")
hist(pheno[,1],breaks=25)
#do the cut-off
p <- 1
new_phenotype_matrix <- NULL
for(p in 1:ncol(pheno)){
	cutoff <- (max(pheno[,p],na.rm=T) * 0.10) + min(pheno[,p],na.rm=T) #min ensures that there would be elements in either Group NOT EXPRESSED or Group EXPRESSED
	newphenotype <- as.integer(pheno[,p] > cutoff, na.rm=T) #change T/F into 1/0
	cat(p,"Cut-off:",cutoff,"Group0:",sum(newphenotype==0,na.rm=T),"Group1:",sum(newphenotype==1,na.rm=T),"\n") #Group0->below cutoff, Group1->above cutoff; sum->how many individuals in a group
	new_phenotype_matrix <- cbind(new_phenotype_matrix,newphenotype)
	
}
dimnames(new_phenotype_matrix)[[2]]<- paste("pheno",1:24)
#creat new pheno matrix.txt
write.table(new_phenotype_matrix,file="new pheno matrix.txt",sep="\t")



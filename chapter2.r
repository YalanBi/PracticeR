#Assigment 2.1
read.table("phenotypes.txt")
read.table("X:/Data/My Documents/phenotypes.txt")
 dirdata <- vector(length(dir()), mode="list")
> file_number <- 0
> for(x in dir()){
+ dirdata[[file_number]] <- read.table(file=x)
+ file_nmber = file_number+1
+ }
#Q2.1
read.table("phenotypes.txt")
read.table("genotypes.txt")
#Q2.2


#Assignment 2.2
sample(2,50,replace=FALSE)
runif(50,5,10)
rnorm(50,mean=0,sd=1)

#Assignment 2.3
write.table(matrix,file="mymatrix.txt",sep="\t")
for(x in 1:100){
	cat("Hello world\n",file="log.txt",append=TRUE)
}
#Q2.3
> matrix(runif(100),20,5)
             [,1]       [,2]       [,3]       [,4]       [,5]
 [1,] 0.874246974 0.77263326 0.72477345 0.93139751 0.94464281
 [2,] 0.804245201 0.58140807 0.95901217 0.55999929 0.59305669
 [3,] 0.964055961 0.88759368 0.60567006 0.11567034 0.44206188
 [4,] 0.661534136 0.78791031 0.88818567 0.98636807 0.36521892
 [5,] 0.994909574 0.87695499 0.29887718 0.34145376 0.43432693
 [6,] 0.003487248 0.01471360 0.24980294 0.72024267 0.35643846
 [7,] 0.929572772 0.62324922 0.75116963 0.40496791 0.01998236
 [8,] 0.302705850 0.87352926 0.82918946 0.66950831 0.64015093
 [9,] 0.674952975 0.52616760 0.93608100 0.45245011 0.46617937
[10,] 0.040189903 0.91124478 0.95928922 0.98531025 0.31879073
[11,] 0.827473481 0.17133533 0.21239913 0.03325387 0.11536400
[12,] 0.454883172 0.20924043 0.90252615 0.43254905 0.63012383
[13,] 0.046267706 0.04861978 0.34907202 0.54715997 0.95138869
[14,] 0.329511412 0.47104936 0.73157038 0.78141989 0.92996123
[15,] 0.345013080 0.31596871 0.48557371 0.83282928 0.51836175
[16,] 0.686745657 0.84341565 0.07696306 0.73859321 0.34659610
[17,] 0.833720521 0.90422758 0.57140854 0.07921287 0.27594386
[18,] 0.154743125 0.67336615 0.37675299 0.39846223 0.47973932
[19,] 0.389755579 0.82722695 0.20672241 0.11424693 0.51444408
[20,] 0.509322122 0.26487017 0.16174208 0.51103593 0.72502134
> write.table(matrix(runif(100),20,5),file="mymatrix.txt",sep="\t")
> getwd()
[1] "X:/Data/My Documents"
> cat("rnorm\n",file="mymatrix.txt",append=TRUE)
> write.table(matrix(rnorm(100,mean=5,sd=3),20,5),file="mymatrix.txt",sep="\t",append=TRUE)
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
	#x <- x+l-1
	cat("\n")
	l <- l+1
}

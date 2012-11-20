#Assigment 5
s <- proc.time()

#functions

e <- proc.time()
cat("Time:",(e-s)[[3]],"seconds\n") #only shows information
cat("Used:",memory.size(),"/",memory.limit(),"Mb\n")
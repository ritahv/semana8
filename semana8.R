
library(data.table)
library(plyr)


############
#put data from assignemnt 6 dataset into x
x=read.table(file="Assignment 6 Dataset.txt", header = TRUE, sep=",")
x
#put dataset + grade.avg into y
y = ddply(x,"Sex",transform, Grade.Average=mean(Grade)) 
y

#make a table sorted by gender
write.table(y,"Sorted_Average")
write.table(y,"Sorted_Average",sep=",")
sag=read.table(file="Sorted_Average", header = TRUE, sep=",")
sag

#make a table of only names that contain an "I"/"i"
newx = subset(x,grepl("[iI]",x$Name))
write.table(newx,"DataSubset",sep=",")
inames=read.table(file="DataSubset", header = TRUE, sep=",")
inames

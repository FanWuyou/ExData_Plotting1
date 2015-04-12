a<-read.table("./a/household_power_consumption.txt",header = TRUE,sep = ";",na.strings = "?",nrows=300000)
b<- a[(a$Date == "1/2/2007"), ]
c<- a[(a$Date == "2/2/2007"), ]
d<-rbind(b,c)
hist(d[,"Global_active_power"],breaks = 24,col = "red",main="Global active power",xlab="Global active power(kiolowatts)")
library(datasets)
dev.copy(png,file="plot1.png")
dev.off()
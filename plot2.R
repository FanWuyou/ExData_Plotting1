a<-read.table("./a/household_power_consumption.txt",header = TRUE,sep = ";",na.strings = "?",nrows=300000)
b<- a[(a$Date == "1/2/2007"), ]
c<- a[(a$Date == "2/2/2007"), ]
d<-rbind(b,c)
plot(strptime(paste(d[,"Date"],d[,"Time"]), "%d/%m/%Y %H:%M:%S"),d[,"Global_active_power"],type="l",xlab="",ylab="Global active power")
library(datasets)
dev.copy(png,file="plot2.png")
dev.off()
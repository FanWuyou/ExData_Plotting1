a<-read.table("./a/household_power_consumption.txt",header = TRUE,sep = ";",na.strings = "?",nrows=300000)
b<- a[(a$Date == "1/2/2007"), ]
c<- a[(a$Date == "2/2/2007"), ]
d<-rbind(b,c)
plot(strptime(paste(d[,"Date"],d[,"Time"]), "%d/%m/%Y %H:%M:%S"),d[,"Sub_metering_1"],type="l",xlab="",ylab="Energy sub metering",)
points(strptime(paste(d[,"Date"],d[,"Time"]), "%d/%m/%Y %H:%M:%S"),d[,"Sub_metering_2"],type="l",xlab="",ylab="Energy sub metering",col="red")
points(strptime(paste(d[,"Date"],d[,"Time"]), "%d/%m/%Y %H:%M:%S"),d[,"Sub_metering_3"],type="l",xlab="",ylab="Energy sub metering",col="blue")
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col=c(1,"red","blue"), lty=1,cex=0.6,xpd=TRUE)
library(datasets)
dev.copy(png,file="plot3.png")
dev.off()
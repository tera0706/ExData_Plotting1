plot3 <- function(){
        tab<- read.table("household_power_consumption.txt",header=TRUE, sep=";",stringsAsFactors=FALSE)
        rang <- which(tab=="1/2/2007" | tab=="2/2/2007")
        tab<-tab[rang,]
        tab[,7]<-as.numeric(tab[,7])
        tab[,8]<-as.numeric(tab[,8])
        tab[,9]<-as.numeric(tab[,9])
        x<-paste(tab[,1],tab[,2])
        x<-strptime(x, "%d/%m/%Y %H:%M:%S")
        png("plot3.png")
        plot(x,tab[,7], type="l", xlab="", ylab="Energy sub metering", col="red")
        lines(x,tab[,8], col="green")
        lines(x,tab[,9], col="blue")
        
        legend("topright",c("Sub_metering_1","Sub_metering_1","Sub_metering_3"), pch="-", col=c("red","green","blue"))
        dev.off()
        
}
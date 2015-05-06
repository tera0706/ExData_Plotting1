plot4 <- function(){
        
        
        tab<- read.table("household_power_consumption.txt",header=TRUE, sep=";",stringsAsFactors=FALSE)
        rang <- which(tab=="1/2/2007" | tab=="2/2/2007")
        tab<-tab[rang,]
        for (i in 3:9){
                tab[,i]<-as.numeric(tab[,i])    
        }
        
        x<-paste(tab[,1],tab[,2])
        x<-strptime(x, "%d/%m/%Y %H:%M:%S")
        
        png("plot4.png")
        par(mfrow = (c(2,2)))
        plot(x,tab[,3], type="l", xlab="", ylab="Global Active Power")
        plot(x,tab[,5], xlab="datatime" , ylab = "Voltage", type="l")
        plot(x,tab[,7], type="l", xlab="", ylab="Energy sub metering", col="red")
        lines(x,tab[,8], col="green")
        lines(x,tab[,9], col="blue")
        
        legend("topright",c("Sub_metering_1","Sub_metering_1","Sub_metering_3"), pch="-", col=c("red","green","blue"))
        
        plot(x,tab[,4], type="l", xlab="Datatime", ylab="Global Aeactive Power ")
        
        dev.off()
        
        
        
       
}
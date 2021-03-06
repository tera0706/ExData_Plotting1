plot2 <- function(){
        tab<- read.table("household_power_consumption.txt",header=TRUE, sep=";",stringsAsFactors=FALSE)
        rang <- which(tab=="1/2/2007" | tab=="2/2/2007")
        tab<-tab[rang,]
        tab[,3]<-as.numeric(tab[,3])
        png("plot2.png")
        x<-paste(tab[,1],tab[,2])
        x<-strptime(x, "%d/%m/%Y %H:%M:%S")
        plot(x,tab[,3], type="l", xlab="", ylab="Global Active Power (kilowats)")
        dev.off()
                
}
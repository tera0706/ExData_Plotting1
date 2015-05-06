plot1 <-function(){
        tab<- read.table("household_power_consumption.txt",header=TRUE, sep=";",stringsAsFactors=FALSE)
        rang <- which(tab=="1/2/2007" | tab=="2/2/2007")
        tab<-tab[rang,]
        tab[,3]<-as.numeric(tab[,3])
        png("plot1.png")
        hist(tab[,3], col="blue", main = " Global Active Power" , xlab = "Global Active Power (kilowats)")
        dev.off()
        
        
}
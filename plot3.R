readData <- read.table("./household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
stripData <- readData[readData$Date %in% c("1/2/2007","2/2/2007") ,]

makeDate <- strptime(paste(stripData$Date, stripData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
sub1 <- as.numeric(subSetData$Sub_metering_1)
sub2 <- as.numeric(subSetData$Sub_metering_2)
sub3 <- as.numeric(subSetData$Sub_metering_3)
plot3 <- as.numeric(stripData$Global_active_power)

png("plot3.png", width=480, height=480)
plot(makeDate, sub1, type="l", ylab="Energy Submetering", xlab="")
lines(makeDate, sub2, type="l", col="red")
lines(makeDate, sub3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()


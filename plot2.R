readData <- read.table("./household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
stripData <- readData[readData$Date %in% c("1/2/2007","2/2/2007") ,]

makeDate <- strptime(paste(stripData$Date, stripData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
plot2 <- as.numeric(stripData$Global_active_power)
png("plot2.png", width=480, height=480)
plot(makeDate, plot2, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()






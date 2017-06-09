readData <- read.table("./household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
stripData <- readData[readData$Date %in% c("1/2/2007","2/2/2007") ,]

plot1 <- as.numeric(stripData$Global_active_power)
png("plot1.png", width=480, height=480)
hist(plot1, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
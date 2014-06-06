data <- read.csv('household_power_consumption.txt', sep=';', na.strings="?", colClasses = c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric" ), header=T)

plotData <- data[(data$Date=="1/2/2007") | (data$Date=="2/2/2007"),]
plotData$Date <- as.Date(plotData$Date, format='%d/%m/%Y')

png(filename="plot1.png", width=480, height=480, units="px")
hist(plotData$Global_active_power, col="red", xlab="Global Active Power (kilowatts)", ylab="Frequency", main="Global Active Power")
dev.off()
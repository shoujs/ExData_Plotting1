Sys.setlocale("LC_TIME", "C")

data <- read.csv("household_power_consumption.txt", sep=";", na.strings="?", colClasses = c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric" ), header=T)

plotData <- data[(data$Date=="1/2/2007") | (data$Date=="2/2/2007"),]

plotData$DateTime<-strptime(paste(plotData$Date, plotData$Time), "%d/%m/%Y %H:%M:%S")

png(filename="plot3.png", width=480, height=480, units="px")

plot(plotData$DateTime, plotData$Sub_metering_1, type="l", ylab="Energy sub metering", xlab="", col="black")
lines(plotData$DateTime, plotData$Sub_metering_2, type="l", col="red")
lines(plotData$DateTime, plotData$Sub_metering_3, type="l", col="blue")
legend("topright", col=c("black","blue", "red"), legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()
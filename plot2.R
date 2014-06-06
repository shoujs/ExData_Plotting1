Sys.setlocale("LC_TIME", "C")

data <- read.csv("household_power_consumption.txt", sep=";", na.strings="?", colClasses = c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric" ), header=T)

plotData <- data[(data$Date=="1/2/2007") | (data$Date=="2/2/2007"),]

plotData$DateTime<-strptime(paste(plotData$Date, plotData$Time), "%d/%m/%Y %H:%M:%S")

png(filename="plot2.png", width=480, height=480, units="px")

plot(plotData$DateTime, plotData$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")

dev.off()
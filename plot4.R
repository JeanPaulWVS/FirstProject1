##########
### Plot 4
##########

file_chosse <- "C:\\Users\\jeanpaulwvs\\Desktop\\household_power_consumption.txt"
data <- read.table(file_chosse, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
data <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

datetime <- strptime(paste(data$Date, data$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
global <- as.numeric(data1$Global_active_power)
metering1 <- as.numeric(data$Sub_metering_1)
metering2 <- as.numeric(data$Sub_metering_2)
metering3 <- as.numeric(data$Sub_metering_3)


png("plot4.png", width=480, height=480)

par(mfrow = c(2,2))
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")

plot(datetime, data$Voltage, type = "l", ylab = "Voltage")

plot(datetime, metering1, type="l", ylab="Energy Submetering", xlab="")
lines(datetime, metering2, type="l", col="red")
lines(datetime, metering3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))

plot(datetime, data$Global_reactive_power, type = "l")

dev.off()
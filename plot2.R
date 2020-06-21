##########
### Plot 2
##########

file_chosse <- "C:\\Users\\jeanpaulwvs\\Desktop\\household_power_consumption.txt"
data <- read.table(file_chosee, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
data <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

datetime <- strptime(paste(data$Date, data1$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
global <- as.numeric(data1$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()

###########
### Plot 1
###########
file_chosse <- "C:\\Users\\jeanpaulwvs\\Desktop\\household_power_consumption.txt"
data <- read.table(file_chosse, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
data <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

globalpower <- as.numeric(data$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalpower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()

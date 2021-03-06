png(file = "plot4.png")
columns <- c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric")
file <- read.table("household_power_consumption.txt", TRUE, ";", colClasses = columns, na.strings = "?")
data <- file[file$Date == "1/2/2007" | file$Date == "2/2/2007", ]
data$Time <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")
par(mfrow = c(2, 2))
with(data, {
  plot(Time, Global_active_power, type = "s", xlab = "", ylab = "Global Active Power")
  plot(Time, Voltage, type = "s", xlab = "datetime", ylab = "Voltage")
  plot(Time, Sub_metering_1, ylab = "Energy sub metering", xlab = "", type = "S")
  lines(data$Time, data$Sub_metering_2, col = "red")
  lines(data$Time, data$Sub_metering_3, col = "blue")
  legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), bty = "n")
  plot(Time, Global_reactive_power, type = "s", xlab = "datetime", ylab = "Global_reactive_power")
})
dev.off()
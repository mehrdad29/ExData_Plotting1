png(file = "plot2.png")
columns <- c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric")
file <- read.table("household_power_consumption.txt", TRUE, ";", colClasses = columns, na.strings = "?")
data <- file[file$Date == "1/2/2007" | file$Date == "2/2/2007", ]
data$Time <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")
with(data, plot(Time, Global_active_power, type = "s", xlab = "", ylab = "Global Active Power (kilowatts)"))
dev.off()
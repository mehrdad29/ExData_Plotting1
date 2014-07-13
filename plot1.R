png(file = "plot1.png")
columns <- c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric")
file <- read.table("household_power_consumption.txt", TRUE, ";", colClasses = columns, na.strings = "?")
data <- file[file$Date == "1/2/2007" | file$Date == "2/2/2007", ]
hist(data$Global_active_power, xlab = "Global Active Power (kilowatts)", main = "Global Active Power", col = "red")
dev.off()
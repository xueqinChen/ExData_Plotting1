# Tidy data
# source("tidydata.R")

# Upload tidy data
data4 <- read.csv("./data/tidydata.txt",sep=",")

# Graphics
png('plot3.png')

# Convert to POSIXct
datetime <- as.POSIXct(data4$Date_time)
png('plot4.png')
par(mfcol = c(2,2),  mar = c(5,4,4,4))

# Plot top left
plot(datetime,data4$Global_active_power, type = "l",  ylab = "Global Active Power (Kilowatts)", xlab = "")

# Plot top right ~ Sub_metering_(1|2|3|4)
plot(datetime,data4$Sub_metering_1, type = "n", xlab = "", ylab = "Energy sub metering")
lines(datetime,data4$Sub_metering_1, type = "l", col = "black")
lines(datetime,data4$Sub_metering_2, type = "l", col = "red")
lines(datetime,data4$Sub_metering_3, type = "l", col = "blue")
label <- c("Sub_metering_1","Sub_metering_2","Sub_metering_3")
legend("topright", label, lwd = 1, col = c("black","red","blue"))

# Plot down left ~ Voltage
plot(datetime,data4$Voltage, type = "l", ylab = "Voltage")

# Plot down right ~ Global_reactive_power
plot(datetime,data4$Global_reactive_power, type = "l", ylab = "Global_reactive_power")

dev.off()
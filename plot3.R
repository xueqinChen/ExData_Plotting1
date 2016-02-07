# Tidy data
# source("tidydata.R")

# Upload tidy data
data3 <- read.csv("./data/tidydata.txt",sep=",")

# Graphics
png('plot3.png')

# Convert to POSIXct
datetime <- as.POSIXct(data3$Date_time)
# Plot xlab and ylab
plot(datetime,data3$Sub_metering_1, type="n", ylab = "Energy sub metering", xlab = "")
# plot lines
lines(datetime,data3$Sub_metering_1, type = "l", col = "black")
lines(datetime,data3$Sub_metering_2, type = "l", col = "red")
lines(datetime,data3$Sub_metering_3, type = "l", col = "blue")
# Plot graphy note
label <- c("Sub_metering_1","Sub_metering_2","Sub_metering_3")
legend("topright", label, lwd = 1, col = c("black","red","blue"))
dev.off()
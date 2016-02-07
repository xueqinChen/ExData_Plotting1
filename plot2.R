# Tidy data
# source("tidydata.R")

# Upload tidy data
data2 <- read.csv("./data/tidydata.txt",sep=",")

# Graphics
png("plot2.png",width = 480,height = 480)
# Convert to POSIXct
datetime <- as.POSIXct(data2$Date_time)
plot(datetime, data2$Global_active_power, type = "l", 
     ylab = "Global Active Power (Kilowatts)", xlab = "")
dev.off()
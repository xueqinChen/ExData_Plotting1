# Tidy data
source("tidydata.R")

# Upload tidy data
data1 <- read.csv("./data/tidydata.txt",sep=",")
print(dim(data1))

# Histogram
# quartz()
png("plot1.png",width = 480,height = 480)
par(mfrow = c(1,1), mar = c(5,4,4,4))
hist(data1$Global_active_power, col = "red", 
     xlab = "Global Active Power (Kilowatts)",main = "Global Active Power")
dev.off()
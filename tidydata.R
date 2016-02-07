# Fistly, download the household_power_consumption.txt file to data folder.

# Loading ./data/household_power_consumption.txt
library(sqldf)
data <- read.csv.sql('./data/household_power_consumption.txt',sep = ";",
                     sql = "select * from file where Date = '1/2/2007' or Date = '2/2/2007'")

# 2880 x 9
print(dim(data))

# Convert Date and Time to Date/Time
datetime <- strptime(paste(data[,1],data[,2]), format = "%d/%m/%Y %H:%M:%S")
# Combine datetime to newdata
newdata <- cbind(datetime,data[ ,3:dim(data)[2]])
names(newdata)[1] <- "Date_time"

# 2880 x 9
print(dim(newdata))
print(class(newdata$Date_time))
write.csv(newdata,"./data/tidydata.txt")

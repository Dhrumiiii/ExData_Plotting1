# Load data
load("filtered_data.RData")

# Open PNG device
png("plot2.png", width=480, height=480)

# Create time series plot
plot(filtered_data$Datetime, filtered_data$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")

# Close device
dev.off()


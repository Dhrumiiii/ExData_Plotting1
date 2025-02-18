
# Load data
load("filtered_data.RData")

# Open PNG device
png("plot3.png", width=480, height=480)

# Create time series plot for Sub Metering
plot(filtered_data$Datetime, filtered_data$Sub_metering_1, type="l", col="black", xlab="", ylab="Energy sub metering")
lines(filtered_data$Datetime, filtered_data$Sub_metering_2, col="red")
lines(filtered_data$Datetime, filtered_data$Sub_metering_3, col="blue")

# Add legend
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lty=1)

# Close device
dev.off()
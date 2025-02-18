library(dplyr)

data <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?", stringsAsFactors = FALSE)

 # Check the structure of the dataset



data$Date <- as.Date(data$Date, format="%d/%m/%Y")

summary(data$Date)  # Should show date range from 2006 to 2010

filtered_data <- subset(data, Date == "2007-02-01" | Date == "2007-02-02")

str(filtered_data)  # Should show fewer rows (around 2880 rows)


filtered_data$Datetime <- strptime(paste(filtered_data$Date, filtered_data$Time), format="%Y-%m-%d %H:%M:%S")

head(filtered_data$Datetime)  # Check if timestamps are generated


save(filtered_data, file = "filtered_data.RData")


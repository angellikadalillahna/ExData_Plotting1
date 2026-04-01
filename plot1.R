power_data <- read.table("./data/household_power_consumption.txt",
                         header = TRUE,
                         sep = ";",
                         stringsAsFactors = FALSE,
                         na.strings = "?",
                         colClasses = c(rep("character", 2),
                                        rep("numeric", 7)))

power_data$Date <- as.Date(power_data$Date, format = "%d/%m/%Y")

subset_data <- subset(power_data, 
                      Date == "2007-02-01" | Date == "2007-02-02")

png("plot1.png", width = 480, height = 480)

hist(subset_data$Global_active_power, 
     col = "red", 
     main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)")

dev.off()
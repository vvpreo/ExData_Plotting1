source("load_data_frame.R")

png(width = 480, height = 480, filename = "plot1.png")
hist(df$Global_active_power, 
     col='red', 
     xlab= "Global Active Power (kilowatts)", 
     main='Global Active Power')

dev.off()

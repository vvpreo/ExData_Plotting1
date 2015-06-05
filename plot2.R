source("load_data_frame.R")

png(width = 480, height = 480, filename = "plot2.png")
plot(y = df$Global_active_power, 
     x= df$DateTime, 
     type="l", 
     ylab="Global Active Power (kilowatts)",
     xlab= "")

dev.off()

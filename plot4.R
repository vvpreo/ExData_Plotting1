source("load_data_frame.R")

png(width = 480, height = 480, filename = "plot4.png")

par(mfcol = c(2,2))

plot(y = df$Global_active_power, 
     x= df$DateTime, 
     type="l", 
     ylab="Global Active Power",
     xlab= "")

plot( y = df$Sub_metering_1, x=df$DateTime, col='grey', type="l", 
      ylab="Energy sub metering",
      xlab= "")
lines(y = df$Sub_metering_2, x=df$DateTime, col='red')
lines(y = df$Sub_metering_3, x=df$DateTime, col='blue')
legend("topright", pch=1, 
       col = c("grey", 'red','blue'), 
       legend=c('Sub_metering_1', 'Sub_metering_2','Sub_metering_3'))

plot(y = df$Voltage, 
     x= df$DateTime, 
     type="l", 
     ylab="Voltage",
     xlab= "datetime")

plot(y = df$Global_reactive_power, 
     x= df$DateTime, 
     type="l", 
     ylab="Global_reactive_power",
     xlab= "datetime")

dev.off()
source("load_data_frame.R")

png(width = 480, height = 480, filename = "plot3.png")

plot( y = df$Sub_metering_1, x=df$DateTime, col='grey', type="l", 
     ylab="Energy sub metering",
     xlab= "")
lines(y = df$Sub_metering_2, x=df$DateTime, col='red')
lines(y = df$Sub_metering_3, x=df$DateTime, col='blue')

legend("topright", pch=1, col = c("grey", 'red','blue'), legend=c('Sub_metering_1', 'Sub_metering_2','Sub_metering_3'))

dev.off()
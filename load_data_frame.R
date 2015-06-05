df = read.csv(file = '1-2-feb-2007_household_power_consumption.txt', sep = ";")
df$DateTime = strptime(paste(df$Date, df$Time), format="%d/%m/%Y %H:%M:%S")

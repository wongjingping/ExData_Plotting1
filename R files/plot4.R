
# use the standard read_table() function
source('read.R')
data <- read_table('household_power_consumption.txt')


# plot to png
png(filename = 'plot4.png')
par(mfrow = c(2,2))

# plot (1,1)
with(data, plot(datetime, 
                Global_active_power, 
                type = 'l', 
                ylab = 'Global Active Power (kilowatts)', 
                xlab = '')
)

# plot (2,1)
with(data, plot(x = datetime,
                y = Voltage,
                type = 'l'))

# plot (1, 2)
with(data, {
    plot(datetime,
         Sub_metering_1,
         type = 'l',
         col = 'black',
         xlab = '',
         ylab = 'Energy sub metering')
    points(x = datetime,
           y = Sub_metering_2,
           type = 'l',
           col = 'red')
    points(x = datetime,
           y = Sub_metering_3,
           type = 'l',
           col = 'blue')
})
legend('topright',
       legend = c('Sub_metering_1',
                  'Sub_metering_2',
                  'Sub_metering_3'),
       bty = 'n',
       col = c('black', 'blue', 'red'),
       lty = c(1,1))

# plot (2,2)
with(data, plot(x = datetime,
                y = Global_reactive_power,
                type = 'l'))

dev.off() # save and close png device
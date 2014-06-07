
# use the standard read_table() function
source('read.R')
data <- read_table('household_power_consumption.txt')

# plot to png
png(filename = 'plot3.png')
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
       col = c('black', 'blue', 'red'),
       lty = c(1,1))
dev.off() # save and close png device


# use the standard read_table() function
source('read.R')
data <- read_table('household_power_consumption.txt')

# plot to png
png(filename = 'plot2.png', width = 480, height = 480)
with(data, plot(datetime, 
                Global_active_power, 
                type = 'l', 
                ylab = 'Global Active Power (kilowatts)', 
                xlab = '')
     )
dev.off() # save and close png device
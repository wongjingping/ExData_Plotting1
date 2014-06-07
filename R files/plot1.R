
# use the standard read_table() function
source('read.R')
data <- read_table('household_power_consumption.txt')

# plot the histogram
hist(a$Global_active_power, 
     col='red', 
     ylab='Frequency', 
     xlab='Global active power (kilowatts)', 
     main='Global Active Power')

# save as png
dev.copy(png, file='plot1.png', width=480, height=480)
dev.off() # close png device

dev.off() # close screen device
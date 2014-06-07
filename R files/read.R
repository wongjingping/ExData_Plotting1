
read_table <- function(file, na.strings = c('?')) {
    # check for classes, then read in full table
    t_head <- read.table(file, 
                         header = TRUE, 
                         sep = ';',
                         na.strings = na.strings,
                         nrows = 20,
                         stringsAsFactors = FALSE)
    classes <- sapply(t_head, class)
    t_full <- read.table(file,
                         header = TRUE,
                         sep =';',
                         na.strings = na.strings,
                         colClasses = classes)
    # select relevant dates from table (reduce size of table)
    t_full <- t_full[t_full[,1] == '1/2/2007' | t_full[,1] == '2/2/2007',]
    # convert date time strings to object
    t_full[,1] <- paste(t_full[,1], t_full[,2], sep = ' ')
    t_full <- data.frame(strptime(t_full[,1], 
                                  format = '%d/%m/%Y %H:%M:%S'),
                         t_full[,-(1:2)])
    colnames(t_full)[1] <- 'datetime'
    t_full
}
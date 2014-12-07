plot4 <- function(datafile, pngfile) {
    hh <- read.csv(datafile, sep=";", na.strings="?", stringsAsFactors=FALSE)
    tbl_hh <- tbl_df(hh)
    rm(hh)
    tbl_hh1 <- filter(tbl_hh, as.Date(Date, "%d/%m/%Y") >= as.Date("1/2/2007", "%d/%m/%Y") & as.Date(Date, "%d/%m/%Y") <= as.Date("2/2/2007", "%d/%m/%Y"))

    png(file=pngfile, bg="white", width=1024, height=1024)

    par(mfrow = c(2,2))

    plot(strptime(paste(tbl_hh1$Date, tbl_hh1$Time),"%d/%m/%Y %H:%M:%S"), tbl_hh1$Global_active_power, type="l", ylab="Global Active Power (kilowatts)", xlab="datetime")

    plot(strptime(paste(tbl_hh1$Date, tbl_hh1$Time),"%d/%m/%Y %H:%M:%S"), tbl_hh1$Voltage, type="l", ylab="Voltage", xlab="datetime")

    plot(strptime(paste(tbl_hh1$Date, tbl_hh1$Time),"%d/%m/%Y %H:%M:%S"), tbl_hh1$Sub_metering_1, type="l", ylab="Energy sub metering", xlab="")

    plot(strptime(paste(tbl_hh1$Date, tbl_hh1$Time),"%d/%m/%Y %H:%M:%S"), tbl_hh1$Global_reactive_power, type="l", ylab="Global Reactive Power (kilowatts)", xlab="datetime")

    dev.off()
}


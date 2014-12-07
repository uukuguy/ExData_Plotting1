plot1 <- function(datafile, pngfile) {
    hh <- read.csv(datafile, sep=";", na.strings="?", stringsAsFactors=FALSE)

    tbl_hh <- tbl_df(hh)
    rm(hh)
    tbl_hh1 <- filter(tbl_hh, as.Date(Date, "%d/%m/%y") >= as.Date("1/2/2007", "%d/%m/%y") & as.Date(Date, "%d/%m/%y") <= as.Date("2/2/2007", "%d/%m/%y"))

    png(file=pngfile, bg="white", width=1024, height=1024)
    hist(tbl_hh1$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power")

    dev.off()
}


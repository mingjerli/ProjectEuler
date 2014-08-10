
rm(list=ls())

twentyCentury <- seq(as.Date("1900/01/01"),as.Date("2000/12/31"), by="days")
twentyCenturySunday <- twentyCentury[seq(from=7, by=7, length=floor(length(twentyCentury)/7))]
twentyCenturySunday <- format(twentyCenturySunday[-(1:floor(366/7))], "%d")
sol <- length(grep("01",twentyCenturySunday))


## This is the  first  program for the household power consumption 
## in project for week 1 in 
## Exploratory Data Analysis for plot 1 histogram


## Reading the  text file
pw_data <- read.table("D:\\household_power_consumption.txt",header =TRUE,sep=";",stringsAsFactors=FALSE, dec=".")

## filter by the date condition
pw_data_sub <- subset(pw_data , Date %in% c("2/1/2007","2/2/2007")) 

## converting the  character to numeric value
pw_data_sub_num <- as.numeric(pw_data_sub$Global_active_power)

## Histogram on the screen device
##hist(pw_data_sub_num,freq= NULL, col="red",xlab ="Global Active Power (Kilowatts)",main="Global Active Power")


## Creation of the png file
png(filename = "plot1.png",width=480,height=480)
hist(pw_data_sub_num,freq= NULL, col="red",xlab ="Global Active Power (Kilowatts)",main="Global Active Power")
dev.off()
graphics.off()




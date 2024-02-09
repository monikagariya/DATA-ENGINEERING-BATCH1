import time
ticks = time.time()
print ("Number of ticks since 12:00am, January 1, 1970:", ticks)
import time
print (time.localtime())
#getting the curren time
import time
localtime = time.localtime(time.time())
print ("Local current time :", localtime)
#geeting the calender for a month
import calendar
cal = calendar.month(2024, 2)
print ("Here is the calendar:")
print (cal)
from datetime import date
# Getting min date
mindate = date.min
print("Minimum Date:", mindate)
# Getting max date
maxdate = date.max
print("Maximum Date:", maxdate)
Date1 = date(2023, 4, 20)
print("Year:", Date1.year)
print("Month:", Date1.month)
print("Day:", Date1.day)
from datetime import datetime
dt = datetime.now()
print("Day: ", dt.day)
print("Month: ", dt.month)
print("Year: ", dt.year)
print("Hour: ", dt.hour)
print("Minute: ", dt.minute)
print("Second: ", dt.second)


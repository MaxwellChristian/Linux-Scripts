
#  from the log.log file

##################################################
# display ONLY the date and time stamp of each record

# cut -d " " -f4 < data/log.log

# the above statement demonstrates the use of cut command
# the -d option is used to specify the delimiter  i.e. SPACE in our file
# the -f option specifies the field to cut i.e. 4th field in our file for date and time stamp

##################################################
# display the date and time stamp and time zone of each record

# cut -d " " -f4,5 < data/log.log

##################################################
# display the
#   date
#   time stamp
#   time zone
#   and resource accessed
# for the recent most 5 records
head -n5 < data/log.log | cut -d " " -f4,5,7

##################################################
# halt to capture input from user
echo "Press ENTER to exit"
read x
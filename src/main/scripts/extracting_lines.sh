
#  from the log.log file

# display the top 5 lines
# [most recent 5 lines pushed to the start of the file]
echo "The latest 5 lines: "
head -n5 data/log.log

##################################################
# display the last 5 lines
# [the oldest 5 lines stacked at the bottom of the file]
echo "The oldest 5 lines: "
tail -n5 data/log.log

##################################################
# the below line demonstrates the use of command chaining
# display ONLY the 5th most recent record from the log.log file
echo "The 5th most recent record: "
head -n5 < data/log.log | tail -n1
# the above statement demonstrates use of both (>) and (|) together
# the file is provided as input to "head" command using the (>)
# then the output from the "head" command is provided as input to "tail" command using (|)

##################################################
# the below line demonstrates the use of command chaining
# display ONLY the 3rd record from oldest records of the log.log file
echo "The 3d oldest record: "
tail -n3 < data/log.log | head -n1
# the above statement demonstrates use of both (>) and (|) together
# the file is provided as input to "tail" command using the (>)
# then the output from the "tail" command is provided as input to "head" command using (|)

##################################################
# halt to capture input from user
echo "Press ENTER to exit"
read x
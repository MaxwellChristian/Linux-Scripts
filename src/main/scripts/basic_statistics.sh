
# this script demonstrates the basic statistics of the file


# display the statistics from the log file

# line count
# word count
# character count
wc data/log.log

# display the total "lines" from the log file
wc -l data/log.log

# display the total "words" from the log file
wc -w data/log.log

# display the total "characters" from the log file
wc -c data/log.log

# generate the output as "Total lines: XXX"

# store the output of the command in a variable
# enclose the command as an expression using back quote [on left of number 1 on keyboard]
totalLines=`wc -l data/log.log`

# to access the value in the variable use the $ sign
echo "Total lines: $totalLines"

# generated output:
# Total lines: 1193353 data/log.log
# the generated output has the name of the file also



# halt to capture input from user
echo "Press ENTER to exit"
read x
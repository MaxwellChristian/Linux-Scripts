
# from the log.log file
# generate the output as "Total lines: XXX"

# store the output of the command in a variable
# enclose the command as an expression using back quote [on left of number 1 on keyboard]
totalLines=`wc -l data/log.log`

# to access the value in the variable use the $ sign
echo "Total lines: $totalLines"

# generated output:
# Total lines: 1193353 data/log.log


####################################################

# the generated output has the name of the file also
# which is not exactly as the required output

# the amendment to the command for required output

cat data/log.log | wc -l
# here there is a redirection of
#  output of cat command to wc command
#  i.e. output of "cat" command works as input to "wc" command


# so to generate the output as "Total lines: XXX"
totalLines=`cat data/log.log | wc -l`
echo "Total lines: $totalLines"

# output required:
# Total words: XXX
# the same output can also be generated using below demonstrated alternate syntax
# replacing the back quote with $(...) sign
totalWords=$(cat data/log.log | wc -w)
echo "Total words: $totalWords"

# output required:
# Total characters: XXX
# the same output can also be generated using below demonstrated alternate syntax
# replacing the redirection from cat command using (|) symbol
# i.e. now using the redirection symbol (<) and providing the file as input to wc command
totalCharacters=$(wc -w < data/log.log)
echo "Total characters: $totalCharacters"

# halt to capture input from user
read x
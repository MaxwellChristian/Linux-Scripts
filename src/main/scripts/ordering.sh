
#  from the log.log file

# display all the logs sorted in ascending order
# sort < data/log.log

##################################################
# sort works in dictionary order i.e. starting from 1st character to the last character on each line
# example :
# assuming the file.txt contains the contents as mentioned below
#   welcome
#   29
#   1987
#   hello
#   Bye
#   9
#   bye bye
# sorting will output as
#   1987
#   29
#   9
#   Bye
#   bye bye
#   hello
#   welcome

#sort < file.txt

##################################################
# sort the entries from the log in order of the resource name
#sort -k 7 < data/log.log
# the -k option specifies the key field to be used for sorting
# the default order of sorting is ascending

##################################################
# sort the entries from the log in descending order of the resource name
#sort -r -k 7 < data/log.log
# the -r option specifies the reverse order of sorting

##################################################
# sort the entries from the log in descending order of the fetched bytes
sort -r -n -k 10 < data/log.log

##################################################
# display the most recent 50 largest files accessed
sort -r -n -k 10 < data/log.log | head -n50

##################################################
# halt to capture input from user
echo "Press ENTER to exit"
read x
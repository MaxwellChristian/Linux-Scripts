
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

sort < file.txt

##################################################
# halt to capture input from user
echo "Press ENTER to exit"
read x
result=$(expr $1^$2 | bc)
printf "$1 in power of $2 will be $result.\n"
#Example of an input: sh ex07_02.sh 10 3

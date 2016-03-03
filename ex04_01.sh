printf "Enter a word: \n"
read word
printf "Enter a filename: "
read filename
grep $word $filename | tee /dev/tty | wc -l; printf "occurences of the '$word' in a '$filename' "

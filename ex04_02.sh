printf "Enter a word: "
read word
printf "Enter a filename: "
read filename
awk '/'$word'/ {count++} END {print count}' $filename

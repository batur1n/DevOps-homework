printf "Please enter a word which you want to delete: \n"
read word
for i in "$@"
do
    sed -i '/'"$word"'/d' $i
    #awk -v var="$word" '!/var/' $i > temp && mv temp $i	#another way to do it
    printf "Deleting word '$word' in file:  $i.\n" 
done
#Example: sh ex06_02.sh ~/text_files/1.txt ~/text_files/2.txt /etc/passwd  

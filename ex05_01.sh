for i in "$@"
    do
    if [ -d $i ]; then
       printf "$i is a directory.\n"    
  elif [ -f $i ]; then
       printf "$i is a file.\n"
  else
       printf "$i is something else.\n"
  exit 1
fi
done
#Example: sh ex05_01.sh /etc/passwd /etc/resolv.conf /etc/

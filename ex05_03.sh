printf "Enter a username: "
read usrname; printf "User '$usrname' is logged in since: "
who | awk '/'$usrname'/ {print $3,$4;exit;}'

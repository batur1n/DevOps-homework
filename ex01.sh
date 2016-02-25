cp /etc/passwd ~/pw
grep -o -P '(?<=[0-9]:).*(?=:\/)' ~/pw > pw1
sed -i -e 's/:\//=\//g' pw1
sed -i -e s/://g pw1
sed -i -e s/[0-9]//g pw1
sed -i -e s/,//g pw1
sed -i -e 's/^/Home directory of /' pw1
cat pw1

HRA=0; DA=0;
printf "Please enter emplyee salary: \n"
      read basic
           if ! [ "$basic" -eq "$basic" ] 2>/dev/null   #Let's check that input is a number
                then printf "Invalid input.\n";           
           elif [ "$basic" -lt 1500 ];
		then HRA=$(expr $basic*0.1 | bc); DA=$(expr $basic*0.9 | bc);
		printf "Salary=$basic, HRA=$HRA and DA=$DA.\n";
	   else [ "$basic" -gt 1500 ];
		HRA=500; DA=$(expr $basic*0.98 | bc);
	  	printf "Salary=$basic, HRA=$HRA and DA=$DA.\n";	
fi

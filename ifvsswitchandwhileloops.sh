#!bin/bash

read yn
case $yn in
	yes ) echo -e "Great!"; 
		sleep 10;;
	y ) echo -e "Great!"; 
		sleep 10;;
	no ) echo -e "Ok then, goodbye!"; 
		exit;;
esac

vartrue=true
varfalse=false

promptUserYesNo() {
keepAsking=true
continue=false
while $keepAsking; do
	echo -e "Would you like to wait?  (yes/no): "
	read userPrompt
	if [[ $userPrompt == "yes" | $userPrompt == "y" ]]; then
		echo -e "Great!";
		((keepAsking=false))
		((continue=true))
	elif [[ $userPrompt == "no" | $userPrompt == "n" ]]; then
		echo -e "Ok then, goodbye!"
		((keepAsking=false))
		((continue=false))
	else
		echo -e "Please enter yes/no or y/n only :) "
		((keepAsking=true))
	fi
done
return $continue
}

if [[ promptUserYesNo ]]; then
	echo "use said yes!"
else
	exit
fi


case $yn in
	yes ) echo -e "Great!"; 
		sleep 10;;
	no ) echo -e "Ok then, goodbye!"; 
		exit;;
esac
#!/bin/bash
echo -e "Welcome to the Ultimate Plant Care Simulator! You've just been hired as a garden caretaker. You'll need to pick a plant to grow and keep it healthy. But before you get to work, we need to know your name."
echo -e "\nSo... what is it?"
read name
echo -e "$name... That's a cool name!"
sleep 5
exit
read -p "Would you like to plant a seed? (yes/no) " yn
case $yn in
yes ) echo -e "You have dug a hole and planted a small seed.";;
no ) echo -e "Exiting..."; sleep 5; exit;;


#!/bin/bash
echo -e "Welcome to the Ultimate Plant Care Simulator! You've just been hired as a garden caretaker. You'll need to pick a plant to grow and keep it healthy. But before you get to work, we need to know your name."
echo -e "So... what is it?"
read name
echo -e "$name... That's a cool name!"
sleep 5
exit
read -p "Would you like to plant a seed? (yes/no) " yn
case $yn in
yes ) echo -e "You have dug a hole and planted a small seed.";;
no ) echo -e "Exiting..."; sleep 5; exit;;
echo -e "Just so you know, in this digitial world of ours, time moves a LOT faster than it does in reality. A few seconds out there in the real world could be hours, days, or even months here."
read -p "Would you like to wait for your seed to grow? (yes/no) " yn
case $yn in
	yes ) echo -e "Alright! You'll have to wait 1 day."; sleep 10;;
no ) echo -e "Ok then, goodbye!"; exit;;
echo -e "Oh, look! Your seed germinated overnight."
read -p "Would you like to wait another day and watch it grow? (yes/no) " yn
	case $yn in
		yes ) echo -e "Great!"; sleep 10;;
no ) echo -e "Ok then, goodbye!"; exit;;
echo -e "Your seed has now grown into a sapling."
read -p "Would you like to wait another day and watch your sapling grow? (yes/no) " yn
case $yn in
		yes ) echo -e "Great!"; sleep 10;;
no ) echo -e "Ok then, goodbye!"; exit;;
echo -e "Your plant grows 2cm taller and two more leaves everyday."
echo -e "Your plant is now 5 days old. It is 4cm tall and has 4 leaves."
read -p "Would you like to wait another day and watch your plant grow? (yes/no) " yn
	case $yn in
		yes ) echo -e "Great!"; sleep 10;;
no ) echo -e "Ok then, goodbye!"; exit;;
echo -e "Your plant is now 6cm tall and has 6 leaves."
read -p "Would you like to wait another day and watch your plant grow? (yes/no) " yn
	case $yn in
		yes ) echo -e "Great!"; sleep 10;;
no ) echo -e "Ok then, goodbye!"; exit;;
echo -e "Your plant is now 8cm tall and has 8 leaves."
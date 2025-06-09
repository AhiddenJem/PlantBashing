#!/bin/bash

height_of_plant=0
leaves_on_plant=0
age_of_plant=0
continue_growing="yes"

echo -e "Welcome to the Ultimate Plant Care Simulator! You've just been hired as a garden caretaker. You'll need to pick a plant to grow and keep it healthy. But before you get to work, we need to know your name."
echo -e "So... what is it?"
read name
echo -e "$name... That's a cool name!"
#sleep 3

grow_plant() {
	keepAsking=true
	while [[ $keepAsking == "true" ]]; do
		read -p "$1 (yes/no): " userPrompt
		if [ $userPrompt == "yes" ] || [ $userPrompt == "y" ]; then
			echo -e "Great!";
			keepAsking=false
			continue_growing="yes"
		elif [ $userPrompt == "no" ] || [ $userPrompt == "n" ]; then
			echo -e "Ok then, goodbye!"
			keepAsking=false
			continue_growing="no"
		else
			echo -e "Please enter yes/no or y/n only."
		fi
	done
}

update_plant_values(){
		#use some logic to increase the vallues by the correct amount each time we grow!

	echo -e $1 $age_of_plant $2 $height_of_plant $3 $leaves_on_plant $4

}

#echo -e "Would you like to plant a seed?  (yes/no): "
grow_plant "Would you like to plant a seed?"

echo -e "You have dug a hole and planted a small seed."

grow_plant "Would you like to wait for your seed to grow?"
echo -e "Growing..."
#sleep 10

echo -e "Hm... can't see anything yet."
echo -e "Would you like to wait for your seed to grow?  (yes/no): "
grow_plant
echo -e "Growing..."
#sleep 10

echo -e "Oh, look! Your seed germinated overnight."
echo -e "Would you like to wait another day and watch it grow?  (yes/no): "
grow_plant
echo -e "Growing..."
#sleep 10

echo -e "Looks like nothing's happened yet."
echo -e "Would you like to wait another day and watch your plant grow?  (yes/no): "
grow_plant
echo -e "Growing..."
#sleep 10

echo -e "Still nothing."
grow_plant "Would you like to wait another day and watch your plant grow?  (yes/no): "
echo -e "Growing..."
#sleep 10

echo -e "Your seed has grown into a sapling."
grow_plant "Would you like to wait another day and watch it grow?  (yes/no): "
#At his point in time, the plant should be 2cm tall, 2 leaves and 5 days old.
echo -e "Growing..."
#sleep 10


echo -e "Your plant grows 2cm taller and two more leaves every day."
echo -e "Your plant is now 6 days old. It is 4cm tall and has 4 leaves."
#At his point in time, the plant should be 4cm tall, 4 leaves and 6 days old.
grow_plant "Would you like to wait another day and watch your plant grow?  (yes/no): "
if [[ $continue_growing == "yes" ]]; then
	update_plant_values "Your plant is now " "days old. It is " "cm tall and has " " leaves."
fi
grow_plant "Your plant is now "$age_of_plant" days old. It is "$height_of_plant"cm tall and has "$leaves_on_plant" leaves."

grow_plant "Your plant is now 8 days old. It is 8cm tall and has 8 leaves."

grow_plant "Your plant is now 9 days old. It is 10cm tall and has 10 leaves."

grow_plant "Your plant is now 10 days old. It is 12cm tall and has 12 leaves."

grow_plant "Your plant is now 11 days old. It is 14cm tall and has 14 leaves."

grow_plant "Your plant is now 12 days old. It is 16cm tall and has 16 leaves."

grow_plant "Your plant is now 13 days old. It is 18cm tall and has 18 leaves."

grow_plant "Your plant is now 14 days old. It is 20cm tall and has 20 leaves."

grow_plant "Your plant is now 15 days old. It is 22cm tall and has 22 leaves."

grow_plant "Your plant is now 16 days old. It is 24cm tall and has 26 leaves."

grow_plant "Your plant is now 17 days old. It is 26cm tall and has 26 leaves."

grow_plant "Your plant is now 18 days old. It is 28cm tall and has 28 leaves."

grow_plant "Your plant is now 19 days old. It is 30cm tall and has 30 leaves."

grow_plant "Your plant is now 20 days old. It is 32cm tall and has 32 leaves."

grow_plant "Your plant is now 21 days old. It is 34cm tall and has 34 leaves."

echo -e "Oh no! Looks like your plant has died. Welp, nothing lives forever. Thank you for playing!"

playAgain=true
while [[ $playAgain == "true" ]]; do
	echo -e "Would you like to play again? (yes/no): "
	read userPrompt
	if [ $userPrompt == "yes" ] || [ $userPrompt == "y" ]; then
		echo -e "Great!";
		echo -e "Welcome to the Ultimate Plant Care Simulator! You've just been hired as a garden caretaker. You'll need to pick a plant to grow and keep it healthy. But before you get to work, we need to know your name."
		echo -e "So... what is it?"
		read name
		echo -e "$name... That's a cool name!"
		#sleep 3

		echo -e "Would you like to plant a seed?  (yes/no): "
		grow_plant

		echo -e "You have dug a hole and planted a small seed."
		echo -e "Would you like to wait for your seed to grow?  (yes/no): "
		grow_plant
		echo -e "Growing..."
		#sleep 10

		echo -e "Hm... can't see anything yet."
		echo -e "Would you like to wait for your seed to grow?  (yes/no): "
		grow_plant
		echo -e "Growing..."
		#sleep 10

		echo -e "Oh, look! Your seed germinated overnight."
		echo -e "Would you like to wait another day and watch it grow?  (yes/no): "
		grow_plant
		echo -e "Growing..."
		#sleep 10

		echo -e "Looks like nothing's happened yet."
		echo -e "Would you like to wait another day and watch your plant grow?  (yes/no): "
		grow_plant
		echo -e "Growing..."
		#sleep 10

		echo -e "Still nothing."
		echo -e "Would you like to wait another day and watch your plant grow?  (yes/no): "
		grow_plant
		echo -e "Growing..."
		#sleep 10

		echo -e "Your seed has grown into a sapling."
		echo -e "Would you like to wait another day and watch it grow?  (yes/no): "
		grow_plant
		echo -e "Growing..."
		#sleep 10

		echo -e "Your plant grows 2cm taller and two more leaves every day."
		echo -e "Your plant is now 6 days old. It is 4cm tall and has 4 leaves."
		check_answer

		echo -e "Your plant is now 7 days old. It is 6cm tall and has 6 leaves."
		check_answer

		echo -e "Your plant is now 8 days old. It is 8cm tall and has 8 leaves."
		check_answer

		echo -e "Your plant is now 9 days old. It is 10cm tall and has 10 leaves."
		check_answer

		echo -e "Your plant is now 10 days old. It is 12cm tall and has 12 leaves."
		check_answer

		echo -e "Your plant is now 11 days old. It is 14cm tall and has 14 leaves."
		check_answer

		echo -e "Your plant is now 12 days old. It is 16cm tall and has 16 leaves."
		check_answer

		echo -e "Your plant is now 13 days old. It is 18cm tall and has 18 leaves."
		check_answer

		echo -e "Your plant is now 14 days old. It is 20cm tall and has 20 leaves."
		check_answer

		echo -e "Your plant is now 15 days old. It is 22cm tall and has 22 leaves."
		check_answer

		echo -e "Your plant is now 16 days old. It is 24cm tall and has 26 leaves."
		check_answer

		echo -e "Your plant is now 17 days old. It is 26cm tall and has 26 leaves."
		check_answer

		echo -e "Your plant is now 18 days old. It is 28cm tall and has 28 leaves."
		check_answer

		echo -e "Your plant is now 19 days old. It is 30cm tall and has 30 leaves."
		check_answer

		echo -e "Your plant is now 20 days old. It is 32cm tall and has 32 leaves."
		check_answer

		echo -e "Your plant is now 21 days old. It is 34cm tall and has 34 leaves."
		check_answer
		echo -e "Oh no! Looks like your plant has died. Welp, nothing lives forever. Thank you for playing!"
		$playAgain
	elif [ $userPrompt == "no" ] || [ $userPrompt == "n" ]; then
		echo -e "Thanks for playing!"
		exit
		break
	else
		echo -e "Please enter yes/no or y/n only."
		$playAgain
	fi
done
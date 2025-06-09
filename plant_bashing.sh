#!/bin/bash
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
			echo -e "Great!"
			keepAsking=false
		elif [ $userPrompt == "no" ] || [ $userPrompt == "n" ]; then
			echo -e "Ok then, goodbye!"
			keepAsking=false
			exit
		else
			echo -e "Please enter yes/no or y/n only."
		fi
	done
	echo -e "$2"
}

grow_plant "Would you like to plant a seed?"

echo -e "You have dug a hole and planted a small seed."
grow_plant "Would you like to wait for your seed to grow?" "Growing..."
#sleep 10

echo -e "Hm... can't see anything yet."
grow_plant "Would you like to wait for your seed to grow?" "Growing..."
#sleep 10

echo -e "Oh, look! Your seed germinated overnight."
namePlant=true
while [[ $namePlant == "true" ]]; do
	read -p "Would you like to name your plant? (yes/no): " userPrompt
	if [ $userPrompt == "yes" ] || [ $userPrompt == "y" ]; then
		echo -e "Enter your plant's name."
		read plantname
		namePlant=false
	elif [ $userPrompt == "no" ] || [ $userPrompt == "n" ]; then
		plantname="Morpheus"
		echo -e "Ok. we'll name your plant $plantname."
		namePlant=false
	else
		echo -e "Please enter yes/no or y/n only."
	fi
done
grow_plant "Would you like to wait another day and watch $plantname grow?" "Growing..."
#sleep 10

echo -e "Looks like nothing's happened yet."
grow_plant "Would you like to wait another day and watch your plant grow?" "Growing..."
#sleep 10

echo -e "Still nothing."
grow_plant "Would you like to wait another day and watch your plant grow?  (yes/no): " "Growing..."
#sleep 10

echo -e "Your seed has grown into a sapling."
grow_plant "Would you like to wait another day and watch $plantname grow?  (yes/no): " "Growing..."
#sleep 10

echo -e "Your plant grows 2cm taller and two more leaves every day."
echo -e "Your plant is now 6 days old. It is 4cm tall and has 4 leaves."
grow_plant "Would you like to wait another day and watch your plant grow?" "Growing..."
#sleep 10

echo -e "Your plant is now 7 days old. It is 6cm tall and has 6 leaves."
grow_plant "Would you like to wait another day and watch your plant grow?" "Growing..."
#sleep 10

echo -e "Your plant is now 8 days old. It is 8cm tall and has 8 leaves."
grow_plant "Would you like to wait another day and watch your plant grow?" "Growing..."
#sleep 10

echo -e "Your plant is now 9 days old. It is 10cm tall and has 10 leaves."
grow_plant "Would you like to wait another day and watch your plant grow?" "Growing..."
#sleep 10

echo -e "Your plant is now 10 days old. It is 12cm tall and has 12 leaves."
grow_plant "Would you like to wait another day and watch your plant grow?" "Growing..."
#sleep 10

echo -e "Your plant is now 11 days old. It is 14cm tall and has 14 leaves."
grow_plant "Would you like to wait another day and watch your plant grow?" "Growing..."
#sleep 10

echo -e "Your plant is now 12 days old. It is 16cm tall and has 16 leaves."
grow_plant "Would you like to wait another day and watch your plant grow?" "Growing..."
#sleep 10

echo -e "Your plant is now 13 days old. It is 18cm tall and has 18 leaves."
grow_plant "Would you like to wait another day and watch your plant grow?" "Growing..."
#sleep 10

echo -e "Your plant is now 14 days old. It is 20cm tall and has 20 leaves."
grow_plant "Would you like to wait another day and watch your plant grow?" "Growing..."
#sleep 10

echo -e "Your plant is now 15 days old. It is 22cm tall and has 22 leaves."
grow_plant "Would you like to wait another day and watch your plant grow?" "Growing..."
#sleep 10

echo -e "Your plant is now 16 days old. It is 24cm tall and has 26 leaves."
grow_plant "Would you like to wait another day and watch your plant grow?" "Growing..."
#sleep 10

echo -e "Your plant is now 17 days old. It is 26cm tall and has 26 leaves."
grow_plant "Would you like to wait another day and watch your plant grow?" "Growing..."
#sleep 10

echo -e "Your plant is now 18 days old. It is 28cm tall and has 28 leaves."
grow_plant "Would you like to wait another day and watch your plant grow?" "Growing..."
#sleep 10

echo -e "Your plant is now 19 days old. It is 30cm tall and has 30 leaves."
grow_plant "Would you like to wait another day and watch your plant grow?" "Growing..."

echo -e "Your plant is now 20 days old. It is 32cm tall and has 32 leaves."
grow_plant "Would you like to wait another day and watch your plant grow?" "Growing..."
#sleep 10

echo -e "Your plant is now 21 days old. It is 34cm tall and has 34 leaves."
grow_plant "Would you like to wait another day and watch your plant grow?" "Growing..."
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

		namePlant=true
		while [[ $namePlant == "true" ]]; do
			read -p "Would you like to change your plant's name? (yes/no): " userPrompt
			if [ $userPrompt == "yes" ] || [ $userPrompt == "y" ]; then
				echo -e "Enter your plant's name."
				read second_plantname
				namePlant=false
			elif [ $userPrompt == "no" ] || [ $userPrompt == "n" ]; then
				second_plantname="Morpheus"
				echo -e "Ok. we'll stick with $second_plantname."
				namePlant=false
			else
				echo -e "Please enter yes/no or y/n only."
			fi
		done

		grow_plant "Would you like to plant a seed?"

		echo -e "You have dug a hole and planted a small seed."
		grow_plant "Would you like to wait for your seed to grow?" "Growing..."
		#sleep 10

		echo -e "Hm... can't see anything yet."
		grow_plant "Would you like to wait for your seed to grow?" "Growing..."
		#sleep 10

		echo -e "Oh, look! Your seed germinated overnight."
		grow_plant "Would you like to wait another day and watch $second_plantname grow?" "Growing..."
		#sleep 10

		echo -e "Looks like nothing's happened yet."
		grow_plant "Would you like to wait another day and watch your plant grow?" "Growing..."
		#sleep 10

		echo -e "Still nothing."
		grow_plant "Would you like to wait another day and watch your plant grow?  (yes/no): " "Growing..."
		#sleep 10

		echo -e "Your seed has grown into a sapling."
		grow_plant "Would you like to wait another day and watch $second_plantname grow?  (yes/no): " "Growing..."
		#sleep 10

		echo -e "Your plant grows 2cm taller and two more leaves every day."
		echo -e "Your plant is now 6 days old. It is 4cm tall and has 4 leaves."
		grow_plant "Would you like to wait another day and watch your plant grow?" "Growing..."
		#sleep 10

		echo -e "Your plant is now 7 days old. It is 6cm tall and has 6 leaves."
		grow_plant "Would you like to wait another day and watch your plant grow?" "Growing..."
		#sleep 10

		echo -e "Your plant is now 8 days old. It is 8cm tall and has 8 leaves."
		grow_plant "Would you like to wait another day and watch your plant grow?" "Growing..."
		#sleep 10

		echo -e "Your plant is now 9 days old. It is 10cm tall and has 10 leaves."
		grow_plant "Would you like to wait another day and watch your plant grow?" "Growing..."
		#sleep 10

		echo -e "Your plant is now 10 days old. It is 12cm tall and has 12 leaves."
		grow_plant "Would you like to wait another day and watch your plant grow?" "Growing..."
		#sleep 10

		echo -e "Your plant is now 11 days old. It is 14cm tall and has 14 leaves."
		grow_plant "Would you like to wait another day and watch your plant grow?" "Growing..."
		#sleep 10

		echo -e "Your plant is now 12 days old. It is 16cm tall and has 16 leaves."
		grow_plant "Would you like to wait another day and watch your plant grow?" "Growing..."
		#sleep 10

		echo -e "Your plant is now 13 days old. It is 18cm tall and has 18 leaves."
		grow_plant "Would you like to wait another day and watch your plant grow?" "Growing..."
		#sleep 10

		echo -e "Your plant is now 14 days old. It is 20cm tall and has 20 leaves."
		grow_plant "Would you like to wait another day and watch your plant grow?" "Growing..."
		#sleep 10

		echo -e "Your plant is now 15 days old. It is 22cm tall and has 22 leaves."
		grow_plant "Would you like to wait another day and watch your plant grow?" "Growing..."
		#sleep 10

		echo -e "Your plant is now 16 days old. It is 24cm tall and has 26 leaves."
		grow_plant "Would you like to wait another day and watch your plant grow?" "Growing..."
		#sleep 10

		echo -e "Your plant is now 17 days old. It is 26cm tall and has 26 leaves."
		grow_plant "Would you like to wait another day and watch your plant grow?" "Growing..."
		#sleep 10

		echo -e "Your plant is now 18 days old. It is 28cm tall and has 28 leaves."
		grow_plant "Would you like to wait another day and watch your plant grow?" "Growing..."
		#sleep 10

		echo -e "Your plant is now 19 days old. It is 30cm tall and has 30 leaves."
		grow_plant "Would you like to wait another day and watch your plant grow?" "Growing..."

		echo -e "Your plant is now 20 days old. It is 32cm tall and has 32 leaves."
		grow_plant "Would you like to wait another day and watch your plant grow?" "Growing..."
		#sleep 10

		echo -e "Your plant is now 21 days old. It is 34cm tall and has 34 leaves."
		grow_plant "Would you like to wait another day and watch your plant grow?" "Growing..."
		echo -e "Oh no! Looks like your plant has died. Welp, nothing lives forever. Thank you for playing!"
	elif [ $userPrompt == "no" ] || [ $userPrompt == "n" ]; then
		echo -e "Thanks for playing!"
		playAgain=false
	else
		echo -e "Please enter yes/no or y/n only."
	fi
done
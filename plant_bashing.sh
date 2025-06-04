#!/bin/bash
echo -e "Welcome to the Ultimate Plant Care Simulator! You've just been hired as a garden caretaker. You'll need to pick a plant to grow and keep it healthy. But before you get to work, we need to know your name."
echo -e "So... what is it?"
read name
echo -e "$name... That's a cool name!"
sleep 3

grow_plant() {
	read userPrompt
	keepAsking=true
	while $keepAsking; do
		if [ $userPrompt == "yes" ] || [ $userPrompt == "y" ]; then
			echo -e "Great!";
			break
		elif [ $userPrompt == "no" ] || [ $userPrompt == "n" ]; then
			echo -e "Ok then, goodbye!"
			exit
			break
		else
			echo -e "Please enter yes/no or y/n only."
			$keepAsking
		fi
	done
}

echo -e "Would you like to plant a seed?  (yes/no): "
grow_plant

echo -e "You have dug a hole and planted a small seed."
echo -e "Would you like to wait for your seed to grow?  (yes/no): "
grow_plant
echo -e "Growing..."
sleep 10

echo -e "Hm... can't see anything yet."
echo -e "Would you like to wait for your seed to grow?  (yes/no): "
grow_plant
echo -e "Growing..."
sleep 10

echo -e "Oh, look! Your seed germinated overnight."
echo -e "Would you like to wait another day and watch it grow?  (yes/no): "
grow_plant
echo -e "Growing..."
sleep 10

echo -e "Looks like nothing's happened yet."
echo -e "Would you like to wait another day and watch your plant grow?  (yes/no): "
grow_plant
echo -e "Growing..."
sleep 10

echo -e "Still nothing."
echo -e "Would you like to wait another day and watch your plant grow?  (yes/no): "
grow_plant
echo -e "Growing..."
sleep 10

echo -e "Your seed has grown into a sapling."
echo -e "Would you like to wait another day and watch it grow?  (yes/no): "
grow_plant
echo -e "Growing..."
sleep 10

check_answer() {
	keepAsking=true
	while $keepAsking; do
		echo -e "Would you like to wait another day and watch your plant grow?  (yes/no): "
		read userPrompt
		if [ $userPrompt == "yes" ] || [ $userPrompt == "y" ]; then
			echo -e "Great!";
			break
		elif [ $userPrompt == "no" ] || [ $userPrompt == "n" ]; then
			echo -e "Ok then, goodbye!"
			break
		else
			echo -e "Please enter yes/no or y/n only."
			$keepAsking
		fi
	done

	echo -e "Growing..."
	sleep 10
}

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

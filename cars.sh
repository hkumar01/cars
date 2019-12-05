#! /bin/bash
#cars.sh
# Hari Kumar

x=1
while [ "$x" -eq "1" ]
do
	echo "Type 1 to add new car"
	echo "Type 2 to display list of cars"
	echo "Type 3 to quit and exit program"
	read usr
	case "$usr" in
		"1") echo "What year is the vehicle"
		read year
		echo "What is the make of the vehicle"
		read make
		echo "What is the model of the vehicle"
		read model
		result="$year:$make:$model"
		echo "$result" >> My_old_cars;;
		
		"2")sort My_old_cars 
		echo "$My_old_cars";;

		"3") echo "Goodbye!"
		x=0;;

		*)
	esac
done

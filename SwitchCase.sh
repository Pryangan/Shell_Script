ch='Y'
while [ $ch = 'Y' ]
do
echo "--------Menu----------"
echo "1. List of Files(List)"
echo "2. Current Process"
echo "3. Current Date"
echo "4. Quit"

read ch
case $ch in
List|1)
	echo "File List in Current Location"
	ls -l
	echo "--------------------------------"
	;;
Process|2)
	echo "Current Process"
	ps
	echo "---------------------------------"
	;;
Date|3)
	echo "Current Date"
	date
	echo "----------------------------------"
	;;
Quit|4)
	exit
	;;
*) echo "Invalid choice";;
esac

echo "Continue...[Y/N]"
read ch

done

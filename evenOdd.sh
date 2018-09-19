echo "Enter a Number : "
read no
if test `expr $no % 2` -eq 0
then
echo "even"
else
echo "odd"
fi

if [ `expr $no % 2` -eq 0 ]
then
echo "even"
else
echo "odd"
fi


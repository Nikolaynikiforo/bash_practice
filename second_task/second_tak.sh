echo enter two numbers
read x y

ostatochek=1
n1=$x
n2=$y
if [ $y -eq 0 ]
then
echo "GCD of $x and $y = $x"
exit 0
fi
while [ $ostatochek -ne 0 ]
do
ostatochek=`expr $x % $y`
# or use
#ostatochek=$((x%y))
x=$y
y=$ostatochek
done
echo "GCD of $n1 , $n2 is $x"


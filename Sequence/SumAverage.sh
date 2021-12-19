echo "Please enter your first two digit number: "
read a
echo "Second 2 digit number: "
read b
echo "Third 2 digit number: "
read c
echo "Fourth 2 digit number: "
read d
echo "Fifth 2 digit number: "
read e

sum=$(($a + $b + $c + $d + $e))
avg=$(($sum / 5)) 
prod=$(($a * $b * $c * $d * $e))

echo "The sum of these numbers is: " $sum
echo "The average of these numbers is: " $avg
echo "The product of these numbers is: " $prod
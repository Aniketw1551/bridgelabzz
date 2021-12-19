declare -A Arithmetic

echo "Enter your three numbers : "
read a;
read b;
read c;
Arithmetic[A]=$(($a+$b*$c))
Arithmetic[B]=$(($a%$b+$c))
Arithmetic[C]=$(($c+$a/$b))
Arithmetic[D]=$(($a*$b+$c))

function Arithmetic() {

ArithmeticResult=${Arithmetic[@]}

echo $ArithmeticResult 

}

function sortTheArray() {

ArithmeticOperations=("$@")


range="${#ArithmeticOperations[@]}"

for (( i = 0; i < ${#ArithmeticOperations[@]}; i++ ))
do
	for (( j = $i; j < ${#ArithmeticOperations[@]}; j++ ))
	do
		if [ ${ArithmeticOperations[$i]} -gt ${ArithmeticOperations[$j]}  ]; 
	then	
			temp=${ArithmeticOperations[$i]}
			ArithmeticOperations[$i]=${ArithmeticOperations[$j]}
			ArithmeticOperations[$j]=$temp
		fi
	done
done
echo "Arithmetic Output in Ascending order : " ${ArithmeticOperations[@]}

for (( i = 0; i < ${#ArithmeticOperations[@]}; i++ ))
do
	for (( j = $i; j < ${#ArithmeticOperations[@]}; j++ ))
	do
		if [ ${ArithmeticOperations[$i]} -lt ${ArithmeticOperations[$j]}  ]; 
	then	
			temp=${ArithmeticOperations[$i]}
			ArithmeticOperations[$i]=${ArithmeticOperations[$j]}
			ArithmeticOperations[$j]=$temp
		fi
	done
done

echo "Arithmertic Output in Descending order : " ${ArithmeticOperations[@]}

}

function storeArithmetic() {

counter=0

while [ $counter -lt 1 ]
do
	ArithmeticArray[((counter++))]=$(Arithmetic)
done

echo "Aritmetic Computation Output is : " ${ArithmeticArray[@]}	

sortTheArray ${ArithmeticArray[@]} 
}
storeArithmetic
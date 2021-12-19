function generateRandomNumber() {

randomNumber=$((RANDOM%100 +99))

echo $randomNumber


}

function sortTheArray() {
randomNumbers=("$@")


range="${#randomNumbers[@]}"

for (( i = 0; i < ${#randomNumbers[@]}; i++ ))
do
	for (( j = $i; j < ${#randomNumbers[@]}; j++ ))
	do
		if [ ${randomNumbers[$i]} -gt ${randomNumbers[$j]}  ]; then	
			temp=${randomNumbers[$i]}
			randomNumbers[$i]=${randomNumbers[$j]}
			randomNumbers[$j]=$temp
		fi
	done
done
echo "Sorted array is " ${randomNumbers[@]}
echo "Second Largest number is ${randomNumbers[ $(( ${#randomNumbers[@]}-2 )) ]}"
echo "Second Smallest number is ${randomNumbers[1]}"
}

function storeRandomNumber() {

counter=0

while [ $counter -lt 10 ]
do
	randomNumberArray[((counter++))]=$(generateRandomNumber)
done

echo ${randomNumberArray[@]}	

sortTheArray ${randomNumberArray[@]} 
}

storeRandomNumber
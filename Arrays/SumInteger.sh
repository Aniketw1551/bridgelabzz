count=0
read -p "Enter the limit of array : " limit

echo "Enter value in array"
for (( i=0; i<$limit; i++))
do
read numArray[$i]
done

echo "Array is: "${numArray[@]}

echo "Triplets whose sum are zero: "
for (( i=0; i<$limit; i++ ))
do
	for (( j=i+1; j<$limit; j++ ))
	do
		for (( k=j+1; k<$limit; k++ ))
		do
			#sum=$(( ${numArray[i]} + ${numarray[j]} + ${numArray[k]} ))
			if [  $(( ${numArray[i]} + ${numarray[j]} + ${numArray[k]} )) -eq 0 ]
			then
				echo ${numArray[i]} ${numArray[j]} ${numArray[k]}
				count=$(( count + 1 ))
				fi
		done
	done
done
echo count=$count
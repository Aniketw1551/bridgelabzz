random=0 
declare -A rollDie

while [[ ${rollDie[$random]} -ne 10 ]]
do
random=$(( 1 + RANDOM % 6 ))
rollDie[$random]=$(( ${rollDie[$random]} + 1 ))
done

minCount=${rollDie[1]}
maxCount=${rollDie[1]}
minDieNum=1
maxDieNum=1

for (( i=1; i<${#rollDie[@]}; i++ ))
do
   if [[ $minCount -gt ${rollDie[$((i+1))]} ]]
   then
       minCount=${rollDie[$((i+1))]}
       minDieNum=$((i+1))
   fi
   if [[ ${rollDie[$((i+1))]} -gt $maxCount ]]
   then
        maxCount=${rollDie[$((i+1))]}
        maxDieNum=$((i+1))
    fi
done
echo "Minimum count of : "$minDieNum "is" $minCount
echo "Maximun count of : "$maxDieNum  "is" $maxCount
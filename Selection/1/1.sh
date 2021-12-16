num=$((RANDOM%3+1))
read -p "Enter first Number:" n1 
read -p "Enter second Number:" n2 
read -p "Enter third Number:" n3 
read -p "Enter fourth Number:" n4 
read -p "Enter fifth Number:" n5
 
read -a integers
maximum=${integers}
minimum=${integers}

for i in ${integers}
do
     if [[ $i -gt $maximum ]]
     then
        maximum="$i"
     fi

     if [[ $i -lt $minimum ]]
     then
        minimum="$i"
     fi
done

echo "The maximum value is $maximum"
echo "The minimum value is $minimum"
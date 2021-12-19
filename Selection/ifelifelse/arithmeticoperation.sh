echo "Enter three numbers : "
read a;
read b;
read c;
V1=$(($a+$b*$c))
V2=$(($a%$b+$c))
V3=$(($c+$a/$b))
V4=$(($a*$b+$c))
echo "$V1,$V2,$V3,$V4";

max=$V1;
min=$V1;
if [ $V2 -gt $max ];
then
        max=$V2;
elif [ $V2 -lt $min ];
then
        min=$V2

fi
if [ $V3 -gt $max ];
then
        max=$V3
elif [ $V3 -lt $min ];
then
        min=$V3
fi
if [ $V4 -gt $max ];
then
        max=$V4;
elif [ $V4 -lt $min ];
then
        min=$V4;
fi

echo "Maximum and Minimum Numbers are $max $min"
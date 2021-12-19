prime=0;
echo "enter lower limit "
read a
echo "enter upper limit "
read b

for((i=a;i<=b;))
do
   for((j=i-1;j>=2;))
   do
	if [ $((i % j)) -ne 0 ] ;
	 then
	 prime=1
	 else
	 prime=0
	fi
 	j=$((j - 1))
   done
   if (( $prime == 1 ))
   then
      echo "$i is a prime number"
   fi
      i=$((i + 1))
done

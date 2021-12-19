a=$((RANDOM%99+100))
b=$((RANDOM%99+100))
c=$((RANDOM%99+100))
d=$((RANDOM%99+100))
e=$((RANDOM%99+100))

echo $a 
echo $b
echo $c 
echo $d 
echo $e

if (( ($a>$b) && ($a>$c) && ($a>$d) && ($a>$e) ))
 then
        echo "maximum number is $a"
elif (( ($b>$a) && ($b>$c) && ($b>$d) && ($b>$e) ))
then
        echo "maximum number is $b"
elif (( ($c>$a) && ($c>$b) && ($c>$d) && ($c>$e) )) 
then
        echo "maximum number is $c"
elif (( ($d>$a) && ($d>$c) && ($d>$b) && ($d>$e) ))
then
        echo "maximum number is $d"
else
        echo "maximum number is $e"
fi

if (( ($a<$b) && ($a<$c) && ($a<$d) && ($a<$e) ))
then
        echo "minimum number is $a"
elif (( ($b<$a) && ($b<$c) && ($b<$d) && ($b<$e) ))
then
        echo "minimum number is $b"
elif (( ($c<$a) && ($c<$b) && ($c<$d) && ($c<$e) ))
then
        echo "minimum number is $c"
elif (( ($d<$a) && ($d<$c) && ($d<$b) && ($d<$e) ))
then
        echo "minimum number is $d"
else
        echo "minimum number is $e"
fi
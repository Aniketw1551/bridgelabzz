read -p "Enter a number : " num
if [ "$num" = "1" ]
then
echo "sunday" 
elif [ "$num" = "2" ]
then
echo "monday"
elif [ "$num" = "3" ]
then
echo "tuesday"
elif [ "$num" = "4" ]
then
echo "wednesday"
elif [ "$num" = "5" ]
then
echo "thursday"
elif [ "$num" = "6" ]
then
echo "friday"
elif [ "$num" = "7" ]
then
echo "saturday"
else
echo "error,check your no"
fi
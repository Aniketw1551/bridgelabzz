echo "Enter the year : "
read year

if [ $((year % 4)) = 0 ]
then
  if [ $((year % 100)) = 0 ]
    then
    if [ $((year % 400)) = 0 ]
          then
        echo "Its a leap year"
   else
        echo "Its not a leap year"
   fi
  else
        echo "Its a leap year"
  fi
  else
        echo "Its not a leap year"
  fi
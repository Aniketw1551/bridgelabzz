read -p "Enter Date: " date
read -p "Enter Month: " Month

if (( ($Month <= 6 & $date <= 20) & ($Month >= 3 & $Month <= 6) & ($date <31) ))

then
        echo $date $Month "True";
else
        echo "False, the date is not in between 20 march and 20 june" ;
fi
echo "please choose one option" 
echo 1. feet to inches
echo 2. feet to meter
echo 3. inch to feet
echo 4. meter to feet

read choice

	case $choice in
	1)
      echo you choose feet to inches
		echo please enter value :
		read feet
			  inches=$(($feet*12))
		echo  $feet feet is $inches inches 
	;;
	 2)
      echo you choose feet to meter
      echo please enter value :
      read feet
          		 meter=$(($feet*0.3))
      		echo  $feet feet is $meter meter
   ;;
	 3)
      echo you choose inch to feet
      echo please enter value :
      read inches
          	 feet=$(($inches*0.083))
     		 echo  $inches inch is $feet feet
   ;;
	 4)
      echo you choose meter to feet
      echo please enter value : 
      read meter
           feet=$(($meter*3.2))
      echo  $meter meter is $feet feet
   ;;
	*)
	echo "invalid choice"
   ;;
esac
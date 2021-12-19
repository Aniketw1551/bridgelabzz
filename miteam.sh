declare -A miteam
miteam[captain]="rohit"
miteam[batsman]="suryakumar"
miteam[bowler]="bumrah"

echo "Before Adding In Dictionary : " ${miteam[@]}
miteam[allrounder]="hardik"
echo "After Adding In Dictionary : " ${miteam[@]}


echo "Before Updating In Dictionary : " ${miteam[@]}
miteam[batsman]="kisan"
echo "After Updating In Dictionary : " ${miteam[@]}


echo "Length/HeadCount Of An Dictionary : " ${#miteam[@]}

echo "keys Of An Dictionary : " ${!miteam[@]}
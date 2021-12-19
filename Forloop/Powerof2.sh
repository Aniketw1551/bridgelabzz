isPowerOf2 () {
    local n=$1 i=0
    for ((; n>1; n/=2, i++)); do :; done
    (($1 - (2 ** $i) == 0))
}

for n in {1..128}; 
do 
isPowerOf2 $n && echo $n; 
done
items=`ls`
for item in $items
do
    filename=`echo $item | awk -F. '{ print $1 }'`
    extensionname=`echo $item | awk -F. '{ print $2 }'`
    if [ -d $filename ]
    then
    echo "*I am From IF Condition*"
    rm -rf $fileName
    fi
     mkdir -p $filename/$extensionname
	mv $item $filename/$extensionname
done
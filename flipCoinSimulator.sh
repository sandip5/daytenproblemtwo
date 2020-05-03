#!/bin/bash -x

isHead=0;
isHeadWon=0;
isTailWon=0;

for (( count=0; count<=10; count++ ))
do
randomCheck=$(( RANDOM%2 ))
if [[ isHead -eq randomCheck ]]
then
	echo "Head"
	isHeadWon=$(( $isHeadWon + 1 ))
else
	echo "Tail"
	isTailWon=$(( $isTailWon + 1 ))
fi
done

echo "Total number of head win is $isHeadWon"
echo "Total number of tail win is $isTailWon"

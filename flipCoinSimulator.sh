#!/bin/bash -x

isHead=0;
isHeadWon=0;
isTailWon=0;

while [[ $isHeadWon -lt 21 && $isTailWon -lt 21 ]]
do
randomCheck=$(( RANDOM%2 ))
if [[ isHead -eq randomCheck ]]
then
	echo "Tail"
	isHeadWon=$(( $isHeadWon + 1 ))
else
	echo "Head"
	isTailWon=$(( $isTailWon + 1 ))
fi
done

echo "Total number of head win is $isHeadWon"
echo "Total number of tail win is $isTailWon"

if [[ isHeadWon -lt isTailWon ]]
then
	echo "Tail Win"
elif [[ isHeadWon -eq isTailWon ]]
then
	echo "Tie"
else
	echo "Head Win"
fi



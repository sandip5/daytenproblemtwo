#!/bin/bash -x

isHead=0;
isHeadWon=0;
isTailWon=0;
winDifference=0;

while [[ $isHeadWon -lt 21 && $isTailWon -lt 21 ]]
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

if [[ isHeadWon -lt isTailWon ]]
then
	echo "Tail Win"
	#winDifference=$(( $isTailWon - $isHeadWon ))
else
	echo "Head Win"
	#winDifference=$(( $isHeadWon - $isTailWon ))
fi

if [[ isHeadWon -eq isTailWon ]]
then
while [[ $winDifference -ge 2 ]]
do
randomCheck=$(( RANDOM%2 ))
if [[ isHead -eq randomCheck ]]
then
        echo "Head"
        isHeadWon=$(( $isHeadWon + 1 ))
	winDifference=$(( $isHeadWon - $isTailWon ))
else
        echo "Tail"
        isTailWon=$(( $isTailWon + 1 ))
	winDifference=$(( $isTailWon - $isHeadWon ))
fi
done
else
	echo "No Tie"
fi



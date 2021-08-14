#! /bin/bash -x

MAX_COUNT=21
HeadCount=0
TailCount=0
while [ $HeadCount -lt $MAX_COUNT -a $TailCount -lt $MAX_COUNT ]
do
	Flip=$((RANDOM%2))
	if [ $Flip -eq 1 ]
	then
		(( HeadCount++ ))
	else
		(( TailCount++ ))
	fi
done

if [ $HeadCount -gt $TailCount ]
then
	c=$(( HeadCount - TailCount ))
	echo "Head won by :" $c
elif [ $HeadCount -lt $TailCount ]
then
	c=$(( TailCount - HeadCount ))
	echo "Tail won by :" $c
else
	echo "Tie"
fi

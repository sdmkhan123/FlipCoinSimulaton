#! /bin/bash -x

read num
HeadCount=0
TailCount=0
for (( i=0; i<n; i++ ))
do
	Flip=$((RANDOM%2))
	if [ $Flip -eq 1 ]
	then
		((HeadCount++))
	else
		((TailCount++))
	fi
done
echo "Number of Head won:" $HeadCount
echo "Number of Tail won:" $TailCount

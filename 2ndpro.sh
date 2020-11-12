#!/bin/bash -x

number="$((1000 + RANDOM % 9999))"
echo $number
i=2
f=0
while [[ $i-le`$number / 2` ]]
do
if  [ `$number % $i`-eq 0 ]
then
((f=1))
fi
i=`$i + 1`
done
if [ $f -eq 1 ]
then
echo "Not Prime"
else
echo "Prime"
fi

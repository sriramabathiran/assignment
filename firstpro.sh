#!/bin/bash

foutput="6-6"

((count = 0))
while [[ "${diceop}" != "${foutput}" ]] ; do
    ((count = count + 1))
    ((dce1 = $RANDOM % 6 + 1))
    ((dce2 = $RANDOM % 6 + 1))
    diceop="${dce1}-${dce2}"
    echo ${diceop}
done

echo $count
echo $foutput

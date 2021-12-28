#! /bin/bash

x=0;
while [ $x -lt 101 ]
do
  echo "even number="$x
  x=$(( $x + 2 ))
done

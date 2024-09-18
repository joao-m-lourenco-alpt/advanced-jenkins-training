#!/bin/sh

echo "Entre com 3 números"  
read p1;
read p2;
read p3;

rem=$(( $p1 % 2 ))
if [ $rem -eq 0 ];
then
  echo "$p1 is even number"
else
  echo "$p1 is odd number"
fi
rem=$(( $p2 % 2 ))
if [ $rem -eq 0 ];
then
  echo "$p2 is even number"
else
  echo "$p2 is odd number"
fi

rem=$(( $p3 % 2 ))
if [ $rem -eq 0 ];
then
  echo "$p3 is even number"
else
  echo "$p3 is odd number"
fi


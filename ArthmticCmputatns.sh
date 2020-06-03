#!/bin/bash -x

echo "Welcome to Arithmetic Computations Program "

read -p "Enter a:  " a
read -p "Enter b:  " b
read -p "Enter c:  " c

FirstComputation=$(( $a + $b * $c ));
SecondComputation=$(( $a * $b + $c ));
echo "First Computation is : $FirstComputation"
echo "Second Computation is : $SecondComputation"

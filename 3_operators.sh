#!/usr/bin/env bash
# Program to review the operator types
# Autor: Juan Alcantara - juan@cordage.io

numA=10
numB=4

echo  -e "\n------------------------------------------"

echo "Arithmetics Operators"
echo -e "Numbers: A=$numA and B=$numB\n"

echo "Addition A + B =" $((numA + numB))
echo "Subtraction A - B =" $((numA - numB))
echo "Multiplication A * B =" $((numA * numB))
echo "Division A / B =" $((numA / numB))
echo "Remainder A % B =" $((numA % numB))

echo  -e "\n------------------------------------------"

echo -e "\nRelational Operators"
echo -e "Numbers: A=$numA and B=$numB\n"

echo "Greater than A > B =" $((numA > numB))
echo "Less than ! - B =" $((numA < numB))
echo "Greater than or equal A >= B =" $((numA >= numB))
echo "Less than or equal A <= B =" $((numA <= numB))
echo "Equality A == B =" $((numA == numB))
echo "Inequality A != B =" $((numA != numB))

echo  -e "\n------------------------------------------"

echo -e "\nAsignation Operators"
echo -e "Numbers: A=$numA and B=$numB\n"

echo "Addition A += B =" $((numA += numB))
echo "Subtraction A -= B =" $((numA -= numB))
echo "Multiplication A *= B =" $((numA *= numB))
echo "Division A /= B =" $((numA /= numB))
echo "Remainder A %= B =" $((numA %= numB))

echo  -e "\n------------------------------------------"
#!/bin/bash

while getopts u: flag
do
	case "${flag}" in
		u) test=${OPTARG};;
	esac
done
echo "FLAG VALUE: $test"
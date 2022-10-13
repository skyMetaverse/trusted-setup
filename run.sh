#!/bin/bash
if [ $# -eq 2 ];then
        echo "$1 $2"
        ./registration.sh $1 $2
else
        echo "$*"
        ./contribution.sh "$*"
fi

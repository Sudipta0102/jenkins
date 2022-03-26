#!/bin/bash

FIRSTNAME=$1
LASTNAME=$2
SHOW=$3

if [ "$SHOW" = "true" ];then
  echo "Hello, I am $FIRSTNAME $LASTNAME"
else
  echo "Show is false now"
fi

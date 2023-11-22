#!/bin/bash

hosts=("mailcatcher1" "mailcatcher2" "mailcatcher3")
length=${#hosts[@]}
random_index=$((RANDOM % length))

echo "host ${hosts[random_index]}"

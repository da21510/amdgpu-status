#!/bin/bash

sum=0

for ((i=1;i<=13;i++));do

a=$(sudo cat /sys/kernel/debug/dri/$i/amdgpu_pm_info |grep average)
b=$(echo $a |cut -c1-5) 
sum=$(echo "$sum+$b"|bc)

done

echo "$sum""W"

#!/bin/bash
while true;do

for ((i=0;i<=13;i++));do

echo $i:
if [ -f "/sys/kernel/debug/dri/$i/amdgpu_pm_info" ]; then
sudo cat /sys/kernel/debug/dri/$i/amdgpu_pm_info |grep MHz
sudo cat /sys/kernel/debug/dri/$i/amdgpu_pm_info |grep average

else

echo "Not an AMD GPU"

fi

done

sleep 10;
done

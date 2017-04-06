#!/bin/bash
if [ ! -n "$1" ];then
	echo "自行命令不能为空!"
	exit
fi

for ip in 137 136 135 121 119
do
	ip="10.9.193.${ip}"
	echo -e "\n"
	echo ${ip}
	ssh work@${ip} "$1"
done

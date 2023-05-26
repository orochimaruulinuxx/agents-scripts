#!/bin/bash


## system inventory


echo "((((((((((checking the kernel version... ))))))))"
sleep 2
uname -r
echo "((((((((checking the memory... ))))))))"
sleep 2
free -m
echo "((((((((checking the hard drive)))))))))"
sleep 2
lsblk
sleep 2
echo "(((((((checking the os type and version...)))))))"
sleep 2
cat /etc/*release
sleep 2
echo "((((((((checking the number of processor...)))))))"
nproc
echo "((((((((((inventory done successfully)))))))"
sleep 2

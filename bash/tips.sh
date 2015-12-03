#!/bin/bash


#设置程序运行时间
#read 用于表示持续运行的进程
#time 命令用于统计程序执行时间
TIMEOUT=10
read & (sleep $TIMEOUT; eval 'kill -9 $!' &> /dev/null;)

time (read & (sleep $TIMEOUT; eval 'kill -9 $!' &> /dev/null;))


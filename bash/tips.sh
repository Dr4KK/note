#!/bin/bash


#设置程序运行时间
#read 用于表示持续运行的进程
TIMEOUT=100
read & (sleep $TIMEOUT; eval 'kill -9 $!' &> /dev/null;)

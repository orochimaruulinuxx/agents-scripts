#!/bin/bash

## Description : we have below script that is used to delete logs that are 14 days old 

## LOG_DIR="/var/log"                DAYS_THRESHOLD=14

## find "$LOG_DIR" -type f -name "*.log" -mtime +"$DAYS_THRESHOLD" -exec rm {} \;


## I'll modify it in order  to delete  log files that are  7 days old instead.

## Solution : 
LOG_DIR="/var/log" 
DAYS_THRESHOLD=7

find "$LOG_DIR" -type f -name "*.log" -mtime +"$DAYS_THRESHOLD" -exec rm {} \;


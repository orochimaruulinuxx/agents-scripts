#!/bin/bash

## Description : We have below script that is used to delete logs that are 14 days old. It is deleting the log with extension .log   within the directory /var/log 

## LOG_DIR="/var/log"
## DAYS_THRESHOLD=14
## find "$LOG_DIR" -type f -name "*.log" -mtime +"$DAYS_THRESHOLD" -exec rm {} \;

## We'll modify it in a way so we can use the same script to delete all the .tar files 30 days older in /opt/dev/ packages

## Solution :

LOG_DIR="/opt/dev/"
DAYS_THRESHOLD=3

find "$LOG_DIR" -type f -name "*.tar" -mtime +"$DAYS_THRESHOLD" -exec rm {} \;


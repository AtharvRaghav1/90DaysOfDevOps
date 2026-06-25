#!/bin/bash

if [ $# -eq 0 ]
then
    echo "Usage: ./log_analyzer.sh <logfile>"
    exit 1
fi

LOGFILE=$1

if [ ! -f "$LOGFILE" ]
then
    echo "File not found."
    exit 1
fi

echo "Log File Found."

echo "------------------------"

echo "ERROR Count:"

echo "" >> "$REPORT"



echo "Top 5 Error Messages" >> "$REPORT"

grep -c ERROR "$LOGFILE"

echo

echo "Failed Count:"
grep -c Failed "$LOGFILE"

echo

echo "Critical Events"
grep -n CRITICAL "$LOGFILE"



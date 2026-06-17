#!/bin/bash

LOGFILE=maintenance.log

echo "==================================" >> $LOGFILE
echo "$(date) Maintenance Started" >> $LOGFILE

./log_rotate.sh logs >> $LOGFILE 2>&1

./backup.sh logs backups >> $LOGFILE 2>&1

echo "$(date) Maintenance Finished" >> $LOGFILE
echo "==================================" >> $LOGFILE


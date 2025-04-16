#! /bin/bash

LOGFILE='/var/log/syslog'
CURRENT_DATE=$(date '+%-d')
LOGFILE_DATE=$(awk '{print $2}' $LOGFILE | uniq | tail -n 1 )

echo "Number of lines in the log file : $(wc -l $LOGFILE)"
echo "Number of errors | failures | warnings : $(grep -iE 'error|fail|warn' $LOGFILE | wc -l )"

echo "$(date '+%b %d') Hourly Log entry :"
# We need to set the variables first to use in awk
awk -v curr_day=$CURRENT_DATE '$2 == curr_day {print $3}' $LOGFILE | cut -d: -f1 | sort | uniq -c     


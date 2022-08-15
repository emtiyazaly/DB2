#! /bin/bash
##################################################################
# Author: Imtiaz Ali
# takebackup.sh
# This script is not officially supported by IBM.
##################################################################
STORE_LOCATION=`/tmp`
echo "########################################################################################"
echo "			DB2 online backup request"
echo "########################################################################################"
echo "			Make Sure you are running this script as DB2ADMIN!!"
echo "########################################################################################"
NOW=$(date +"%d_%B_%g-%H_%M_%S")
echo "########################################################################################"
echo "			Creating directory: ${STORE_LOCATION}/$NOW"
mkdir ${STORE_LOCATION}/$NOW
echo "########################################################################################"
echo "			Directory created: ${STORE_LOCATION}/$NOW"
echo "########################################################################################"
echo " 			Starting online backup in above directory"
echo "########################################################################################"
echo "			Do not close until backup command is complete"
echo "########################################################################################"
db2 backup db itimdb online to ${STORE_LOCATION}/$NOW include logs
echo "########################################################################################"
echo "			Online Backup command with logs completed"
echo "########################################################################################"

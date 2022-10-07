#!/bin/bash

# From a mysql database dump and send ftp server 
# @rifatdinc
# Bash Script

FILE=backup.sql.`date +"%Y%m%d"`
DBSERVER=localhost
DATABASE=database
USER=root
PASS=very_secretPassword


unalias rm     2> /dev/null
rm ${FILE}     2> /dev/null
rm ${FILE}.gz  2> /dev/null

mysqldump --opt --user=${USER} --password=${PASS}  ${DATABASE} --ignore-table=radius.radacct  > ${FILE}
gzip $FILE
echo "${FILE}.gz was created:"
ls -l ${FILE}.gz
PWD='very_secretPassword'
USER='user@nodejs.com.tr'
HOST='ftp.golang.com.tr'

ftp -n $HOST <<EOF
user $USER $PWD
cd /BackupdbDirectory
put ${FILE}.gz
bye
EOF


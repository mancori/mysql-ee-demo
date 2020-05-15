#!/bin/sh
#export LOGIN_PATH=cred_backup
export USER=root
export PASSWORD=sakila1995
export SOCKET=/data0/CE/datafiles/mysql.sock
export BCKUPIMG=meb_inc.mbi
export INCBCKDIR=/data0/backups
export INCBCKBASEDIR=/data0/backups/2017-08-18_19-46-19
echo "Executing hot backup MEB incremental..."                    
mysqlbackup --user=$USER --password=$PASSWORD --socket=$SOCKET --backup-dir=$BACKUP_DIR --read-threads=2 --write-threads=2 --process-threads=8 --limit-memory=1024 --number-of-buffers=80 --incremental --incremental-backup-dir=$INCBCKDIR --incremental-base=dir:$INCBCKBASEDIR --with-timestamp --backup-image=$BCKUPIMG --trace=2  backup-to-image

#!/bin/sh
export BCKUPDIR=/data0/backups
export BCKUPIMAGE=full_meb.img
#export LOGINPATH=cred_backup
export USER=root
export PASSWORD=sakila1995
export SOCKET=/data0/CE/datafiles/mysql.sock
echo "Executing hot backup MEB full..."                    
mysqlbackup --user=$USER --password=$PASSWORD --socket=$SOCKET --backup-dir=$BCKUPDIR --backup-image=$BCKUPIMAGE --with-timestamp --read-threads=2 --write-threads=2 --process-threads=8 --limit-memory=1024 --number-of-buffers=80 --compress --compress-level=1 --compress-method=lzma  backup-to-image

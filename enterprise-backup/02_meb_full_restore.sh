#!/bin/sh
export BCKUPDIR=/data0/backups/2017-08-18_19-46-19
export BCKUPIMAGE=full_meb.img
export USER=root
#export PASSWORD=sakila1995
export DATADIR=/data0/CE/slave
echo "Executing restore MEB full..."                    
mysqlbackup  --user=$USER --password=$PASSWORD --backup-dir=$BCKUPDIR --backup-image=$BCKUPIMAGE --read-threads=2 --write-threads=2 --process-threads=8 --limit-memory=1280 --number-of-buffers=80 --uncompress --datadir=$DATADIR copy-back-and-apply-log

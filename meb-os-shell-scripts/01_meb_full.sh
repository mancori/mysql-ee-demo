#!/bin/sh
export BCKUPDIR=/home/mysql/backup
export BCKUPIMAGE=full_meb.img
export LOGINPATH=cred_backup
export SOCKET=/var/lib/mysql/mysql.sock
echo "Executing hot backup MEB full..."                    
mysqlbackup --login-path=$LOGINPATH --socket=$SOCKET --backup-dir=$BCKUPDIR --backup-image=$BCKUPIMAGE --compress --compress-level=1 --compress-method=lzma  backup-to-image

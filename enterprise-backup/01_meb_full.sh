#!/bin/sh
export BCKUPDIR=/home/mysql/meb
export BCKUPDIRTMP=/home/mysql/meb/tmp
export BCKUPIMAGE=full_meb.img
export USER=root
export SOCKET=/var/lib/mysql/mysql.sock
echo "Executing hot backup MEB(MySQL Enterprise Backup) full..."                    
mysqlbackup -u$USER -p --socket=$SOCKET --backup-dir=$BCKUPDIRTMP --with-timestamp --backup-image=$BCKUPDIR/$BCKUPIMAGE.$(hostname).img --compress --compress-level=1 --compress-method=lzma  backup-to-image
echo "Backup Image on " $BCKUPDIR/$BCKUPIMAGE.$(hostname).img

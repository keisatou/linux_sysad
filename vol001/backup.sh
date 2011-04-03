#!/bin/sh

BACKUPDIR=$HOME/tmp/backup

for dir in "$@"
do
    echo $dir
    echo "Backup $dir ..."
    escaped_dir=`echo $dir | tr / -`
    date=`date +%Y%m%d`
    tar cfz ${BACKUPDIR}/backup${escaped_dir}-${date}.tgz -C $dir .
    echo "done."
done

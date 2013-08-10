#!/bin/bash
configpath=/home/action/workspace
. $configpath/config.sh

LIB=~/workspace/library
RECIPE=/home/action/workspace/recipes/daily
TO_EMAIL=arpanchavdaeng@free.kindle.com
TO_HITESH=hiteshpiprotar9119@free.kindle.com

#generate ebook

for f in $RECIPE/*.recipe
do
  op_file=$(basename "$f")
  ext="${f##*.}"
  mobi_op="${op_file%.*}"
  .$CALIBRE/ebook-convert "$f" $LIB/"$mobi_op".mobi --output-profile kindle
done
#send ebook
for f in $LIB/*.mobi
do
  .$CALIBRE/calibre-smtp --attachment $f --relay smtp.gmail.com --port 587 --username $USERNAME --password "$PASSWORD" --encryption-method TLS $FROM_EMAIL $TO_EMAIL ""
  .$CALIBRE/calibre-smtp --attachment $f --relay smtp.gmail.com --port 587 --username $USERNAME --password "$PASSWORD" --encryption-method TLS $FROM_EMAIL $TO_HITESH ""
  .$CALIBRE/calibredb add $f --duplicates --library-path=$LIB
done
#run calibre server
.$CALIBRE/calibre-server --daemonize --timeout=15 --with-library=$LIB

#remove ebook
rm $LIB/*.mobi

#upload to dropbox
#for f in $LIB/*.mobi
#do
#  bash workspace/scripts/dropbox_uploader.sh upload $f /
#done


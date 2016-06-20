#!/bin/sh

CMD=""

while [ $1 ]
do
  CMD="${CMD} --imgfile $1"
  shift
done

/usr/sbin/xnbd-wrapper ${CMD}

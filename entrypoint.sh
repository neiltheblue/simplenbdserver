#!/bin/sh

TARGET="--target"
OPT=""
IMG=""

while [ $1 ]
do
  case $1 in
   --cow) TARGET="--cow-target"
   ;;
   --readonly) OPT="--readonly"
   ;;
   *) IMG="$1"
   ;;
  esac
  
  shift
done

/usr/sbin/xnbd-server "${TARGET} ${OPT} ${IMG}"

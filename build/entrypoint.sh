#!/bin/bash 

#check if env vars are set
if [ -z "$TEAM" ]
then
      echo "\$TEAM is empty. set to  0"
      TEAM=0
fi

if [ -z "$USER" ]
then
      echo "\$USER is empty. set to  0"
      USER=Anonymous
fi

if [ -z "$PASSKEY" ]
then
      echo "\$PASSKEY is empty. set to 1385yourpasskeyhere5924 "
      PASSKEY=1385yourpasskeyhere5924
fi

if [ -z "$CAUSE" ]
then
      echo "\$CAUSE is empty. set to ANY"
      CAUSE=ANY
fi

if [ -z "$GPU" ]
then
      echo "\$GPU is empty. set to false"
      GPU=false
fi

if [ -z "$SMP" ]
then
      echo "\$SMP is empty. set to true by default"
      SMP=true
fi

if [ -z "$CPUS" ]
then
      echo "\$CPUS is empty. set to -1 all by default"
      CPUS=-1
fi

if [ -z "$CPU_USAGE" ]
then
      echo "\$CPU_USAGE is empty. set to 100 all by default"
      CPU_USAGE=100
fi

mkdir -p /fah-data

FAHClient --data-directory=/fah-data --user=$USER --passkey=$PASSKEY --team=$TEAM --cause=$CAUSE --cpus=$CPUS --cpu-usage=$CPU_USAGE --gpu=$GPU --smp=$SMP $ADDITIONAL_OPTIONS

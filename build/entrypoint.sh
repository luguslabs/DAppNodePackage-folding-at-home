#!/bin/bash 

#check if env vars are set
if [ -z "$PAUSE_ON_START" ]
then
      echo "\$PAUSE_ON_START is empty. set to false"
      PAUSE_ON_START=false
fi

if [ -z "$TEAM" ]
then
      echo "\$TEAM is empty. set to 0"
      TEAM=0
fi

if [ -z "$USER" ]
then
      echo "\$USER is empty. set to 0"
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

if [ -z "$ALLOW" ]
then
      echo "\$ALLOW is empty. set to 127.0.0.1,192.168.1.0/24,172.33.0.1/24 by default"
      ALLOW=127.0.0.1,192.168.1.0/24,172.33.0.1/24
fi

if [ -z "$COMMAND_ALLOW_NO_PASS" ]
then
      echo "\$COMMAND_ALLOW_NO_PASS is empty. set to 127.0.0.1,192.168.1.0/24,172.33.0.1/24 by default"
      COMMAND_ALLOW_NO_PASS=127.0.0.1,192.168.1.0/24,172.33.0.1/24
fi

mkdir -p /home/fah/data

FAHClient --data-directory=/home/fah/data --pause-on-start=$PAUSE_ON_START \
            --allow=$ALLOW --command-allow-no-pass=$COMMAND_ALLOW_NO_PASS \
            --user=$USER --passkey=$PASSKEY --team=$TEAM \
            --cause=$CAUSE --cpus=$CPUS --cpu-usage=$CPU_USAGE \
            --gpu=$GPU --smp=$SMP $ADDITIONAL_OPTIONS

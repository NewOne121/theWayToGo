#!/bin/bash
###Installing GOlang and setting basic envirinment.
#Some of this really not obvious for beginner
#We gonna use verion that hardcoded here. Probably one day i'll rework it.

curl 'https://dl.google.com/go/go1.10.3.linux-amd64.tar.gz' --output /tmp/'go.tar.gz'
tar -xvf /tmp/'go.tar.gz' -C /opt 

###Workdir
mkdir -p /opt/forge/src

##Copy env file, update bashrc
SRCDIR="$(dirname "$0")"
cp $SRCDIR/goenv $HOME/\.goenv
if [ $(grep -q 'goenv' $HOME/\.bashrc; echo $?) = "1" ];
then
 echo "source $HOME/.goenv" >> $HOME/\.bashrc
fi

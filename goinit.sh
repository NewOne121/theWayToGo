#!/bin/bash
###Installing GOlang and setting basic envirinment.
#Some of this really not so obvious
#We gonna use verion that hardcoded here. Probably one day i'll rework it.

cd /tmp\
&& curl 'https://dl.google.com/go/go1.10.3.linux-amd64.tar.gz' --output 'go.tar.gz'
tar -xvf 'go.tar.gz' -C /opt 
###Workdir
mkdir -p /opt/forge/src

#Export env
export GOROOT=/opt/go
export GOBPATH=/opt/forge
export export PATH=$PATH:GOROOT/bin

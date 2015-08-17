#!/bin/bash

if [ ! $# = 1 ]; then
    echo "Usage: ${0} KEY"
    exit 1
else
    KEY=$1
fi

apt-key adv --keyserver keyserver.ubuntu.com --recv-keys ${KEY}

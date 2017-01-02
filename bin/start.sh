#!/bin/sh

if [ "$1" = "shell" ]; then
/bin/bash
exit 0
fi

if [ ! -d "/app" ]; then
mkdir /app
fi
if [ ! -d "/app/mongodb" ]; then
mkdir /app/mongodb
fi
if [ ! -d "/app/log" ]; then
mkdir /app/log
fi


/usr/bin/mongod --config /etc/mongodb.conf

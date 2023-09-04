#!/bin/bash

ENV=login.conf

if [ -f $ENV ]
then
    source $ENV
else
    echo $ENV not found
    exit 1
fi

docker run -d --restart always --env-file $ENV --name honeygain devontm/honeygain-arm64

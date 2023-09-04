#!/bin/bash

cd /app

./box64 honeygain -tou-accept -email $USER -pass $PASS -device `hostname`

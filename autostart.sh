#!/bin/bash

# Start PC
wakeonlan D4:3D:7E:4D:DD:13

# Wait until steam is reachable
echo Connecting to the PC ...
while ! nc -z -w5 192.168.1.221 47989 &>/dev/null; do :; done

# Start Moonlight
echo "PC available, starting moonlight"
cd ~/git/moonlight-config
moonlight -mapping xbox_one.map -60fps stream 192.168.1.221

#!/bin/bash
topic="cmd/airswitch"
mosquitto_sub -t ${topic} | while read -r payload
do
if [ ${payload} == "ON" ]
then
echo "topic: ${topic} | switch state: ON"
else
echo "topic: ${topic} | switch state: OFF"
fi
done
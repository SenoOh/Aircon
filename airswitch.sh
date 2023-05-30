#!/bin/bash
echo "just a minute!"
topic="cmd/pinot/v1/nursinghome/"${1}"/room"${2}"/pinot-airswitch"${2}"/airswitch"${2}
mosquitto_sub -t ${topic} | while read -r payload
do
if [ ${payload} == "ON" ]
then
echo "topic: ${topic} | airswitch status: ON"
else
echo "topic: ${topic} | airswitch status: OFF"
fi
done
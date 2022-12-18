#! /bin/bash
jsonip=192.168.0.111
jsonraw=$(curl http://192.168.0.111/cm?cmnd=status%200 -s -H "Accept: application/json")
echo $jsonip
echo $jsonraw | jq --raw-output '.StatusSNS.ENERGY.Power'
echo $jsonraw | jq --raw-output '.StatusSNS.ENERGY.Yesterday'

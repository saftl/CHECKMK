#! /bin/bash
#jsonip=192.168.0.111
jsonip=$1
jsonraw=$(curl http://${jsonip}/cm?cmnd=status%200 -s -H "Accept: application/json")
echo $jsonip
echo $jsonraw | jq --raw-output '.StatusSNS.ENERGY.Power'
echo $jsonraw | jq --raw-output '.StatusSNS.ENERGY.Yesterday'

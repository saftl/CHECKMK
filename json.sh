#! /bin/bash
json_data='{"key":"value"}'
echo $json_data | jq --raw-output '.key'

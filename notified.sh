#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 /path/to/domains.txt"
    exit 1
fi

input_file="$1"
input_directory=$(dirname "$input_file")

while true; do
    amass enum -df "$input_file" -config ./config/amass-config.yaml | anew "$input_directory/subdomains.txt" | notify -silent -pc ./config/notify-config.yaml
    sleep 86400
done
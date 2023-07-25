#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 /path/to/domains.txt"
    exit 1
fi

input_file="$1"
input_directory=$(dirname "$input_file")

while true; do
    echo "$(date) - Notified.sh script started" | tee -a log.txt
    amass enum -df "$input_file" -silent -config ./config/amass-config.ini | anew "$input_directory/subdomains.txt" | notify -silent -pc ./config/notify-config.yaml
    echo "$(date) - Notified.sh script ended" | tee -a log.txt
    sleep 86400
done
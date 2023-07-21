#!/bin/bash

LOGS_FILE=$(ls /Users/samveltorosyan/airflow/logs/)
PATH='/Users/samveltorosyan/airflow'

current_date_time=$(/bin/date '+%Y-%m-%dT%H:%M:%S')

for file in $LOGS_FILE; do
    FILE_COUNT=$(/bin/ls ${PATH}/logs/${file} | /usr/bin/wc -l)
    if (( ${FILE_COUNT} == 0 )); then
        echo "File dose not exist from ${PATH}/logs/${file}"
    else
        /bin/mkdir -p ${PATH}/logs_zip/${current_date_time}
        /usr/bin/zip -r ${PATH}/logs_zip/${current_date_time}/${file}.zip ${PATH}/logs/${file}/*
        echo "Create New zip file in: ${PATH}/logs_zip/${current_date_time}"
        if (( $? == 0)); then
            /usr/bin/find "${PATH}/logs/${file}" -mindepth 1 -delete
            echo "Remowe old logs from ${PATH}/logs/${file}"
        fi

    fi
done

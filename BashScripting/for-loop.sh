#!/bin/bash

for (( i=0; $i<10; i++ )); do
    echo "index: ${i}"
done

for i in {1..10}; do
    echo "index: ${i}"
done

NUMBERS=(50 60 70 80)

for n in ${NUMBERS[@]}; do
    echo "file: ${n}"
done

FILES=(until-loop.sh while-loop.sh for-loop.sh ex-file.sh)

for file in ${FILES[@]}; do
    if [[ -f "${file}" ]]; then
        echo ls -l "${file}"
    else
        echo "File dose not exist ${file}"
        echo "do you want to create this file? y/n"
        read CREATE_FILE_ANSWER
        if [[ "${CREATE_FILE_ANSWER}" = "y" ]]; then
            touch "${file}"
        else
            echo "Okay"
        fi
    fi
done

#!/bin/bash

for file in $(ls /tmp/*.log); do
  gzip $file
done

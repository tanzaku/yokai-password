#!/bin/bash

# merge passwords

./tools/batch.merge_passwords.sh 2>/dev/null

./tools/batch.split_default.sh 2> /dev/null &
./tools/batch.split_dot.sh 2> /dev/null &
./tools/batch.split_nmc.sh 2> /dev/null &
./tools/batch.create_zip_archive.sh 2> /dev/null &

wait


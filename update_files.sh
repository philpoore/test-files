#!/bin/bash

function make_file () {
    count=$1
    filename=$2

    echo -n -e " - Making file $filename\t\t\t"
    dd if=/dev/random bs=1k count=$count of=$filename 2> /dev/null
    echo "done"
}

cd files

make_file 50k 50MB.zip
make_file 20k 20MB.zip
make_file 10k 10MB.zip
make_file  5k  5MB.zip
make_file  2k  2MB.zip
make_file  1k  1MB.zip

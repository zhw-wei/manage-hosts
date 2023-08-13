#! /bin/bash

cd `dirName $0`

get_config(){
    config=`grep $1 config`
    echo ${config#*$1}
}

echo `get_config 'hosts_path='`
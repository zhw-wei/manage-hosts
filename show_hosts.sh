#! /bin/bash

cd `dirName $0`

hosts_path=`bash get_hosts_path.sh`
hosts_path_file=$hosts_path/hosts

echo
echo "最新的hosts配置内容: "
echo
cat $hosts_path_file
echo
cat $hosts_path_file > 最新的hosts配置内容.log
echo
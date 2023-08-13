#! /bin/bash

cd `dirName $0`

hosts_path=`bash get_hosts_path.sh`
hosts_path_file=$hosts_path/hosts
hosts_path_back=$hosts_path/hosts_backup
hosts_path_back_file=$hosts_path_back/hosts_`date +%Y%m%d%H%M%S`

# unix环境下，hosts文件的操作需要系统权限
if [ ! -d $hosts_path_back ]; then
    mkdir $hosts_path_back
fi

cp $hosts_path_file $hosts_path_back_file

echo
echo "hosts文件备份成功, 备份后文件 $hosts_path_back_file"

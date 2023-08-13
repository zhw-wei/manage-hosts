#! /bin/bash

cd `dirName $0`
bash backup_hosts.sh

hosts_file_path=`bash get_hosts_path.sh`/hosts

echo "# --- 公共配置 ---" > $hosts_file_path
cat hosts/公共配置 >> $hosts_file_path
echo >> $hosts_file_path

for config in `ls hosts/$1`
do
    echo "# --- $config ---" >> $hosts_file_path
    cat hosts/$1/$config >> $hosts_file_path
    echo >> $hosts_file_path
done

echo 
echo "配置完成"

bash show_hosts.sh

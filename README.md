# manage-hosts
管理本机的hosts文件，支持windows、macos、linux

# 执行文件

`backup_hosts.sh`: 备份hosts
`show_hosts.sh`: 打印最新的hosts内容，并输出到文件`最新的hosts配置内容.sh`
`change_hosts.sh`: 执行修改hosts

# hosts目录

`公共配置`  
`hosts/*`文件夹：配置的私有的host文件列表

# `switch_hosts`目录

执行修改hosts的脚本

```shell
#! /bin/bas

cd `dirName $0`/../

bash change_hosts.sh 私有配置_A
```

`私有配置_A`在目录`hosts`下
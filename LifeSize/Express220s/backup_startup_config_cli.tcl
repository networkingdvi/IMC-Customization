
#**************************************************************************
# Identification:backup_running_config_cli
# Purpose:       backup running configuration by cli
#**************************************************************************

set timeout $standard_timeout
send "get config -P\r"
expect "ok,00" {send "\r"}
expect $exec_prompt {}
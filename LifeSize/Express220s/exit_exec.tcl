
#**************************************************************************
# Identification:exit_exec
# Purpose:       quit the "exec" mode on the device
#**************************************************************************

expect -re $exec_prompt {send "exit\r"}
sleep 1
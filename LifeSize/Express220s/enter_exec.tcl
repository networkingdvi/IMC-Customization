#**************************************************************************
# Identification:enter_exec
# Purpose:       enter the "exec" mode on the device
#**************************************************************************

set IGNORE_DELAY true
set timeout $standard_timeout
set loop true

while {$loop == "true"} {

expect -re "Store key in cache" {send "y\r"}

expect -re $username_prompt {send "$username\r"}
expect -re $password_prompt {send "$password\r"}
sleep 1
expect $exec_prompt {set loop false}
expect -re "Login incorrect" {set ERROR_MESSAGE "Authentication failed";set ERROR_RESULT true;set loop false}
}
set IGNORE_DELAY false
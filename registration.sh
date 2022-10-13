#!/usr/bin/expect

set twitter [lindex $argv 0]
set email [lindex $argv 1]
set timeout 100
spawn /bin/groth16_phase2_client register
        expect "twitter"
        send "$twitter\r"
        expect "email"
        send "$email\r"
        expect eof

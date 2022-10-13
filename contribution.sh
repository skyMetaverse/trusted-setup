#!/usr/bin/expect

set contribution [lindex $argv 0]
set timeout 100
spawn /bin/groth16_phase2_client contribute
        expect "Secret"
        send "$contribution\r"
        expect eof


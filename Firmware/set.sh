#!/usr/bin/expect
spawn sudo firmwarepasswd -setpasswd
expect {
    "Enter password:" {
        send "1616DupontP05\r"
        exp_continue
    }
    "Enter new password:" {
        send "1616DupontP05\r"
        exp_continue
    }
    "Re-enter new password:" {
        send "1616DupontP05\r"
        exp_continue
    }
}
spawn sudo bless -mount /Volumes/Macintosh\ HD -setBoot
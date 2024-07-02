#!/usr/bin/expect -f

set timeout -1

spawn /usr/local/bin/python3 AutoPkgReviewAndRun.py

expect {
	"Do you trust these changes?" {
            send -- "y\r"
            exp_continue
      }
    "Search GitHub AutoPkg repos for a*" {
            send -- "n\r"
            exp_continue
      }
      eof
}
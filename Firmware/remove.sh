#!/usr/bin/expect

set verifyPassword [exec sudo firmwarepasswd -check]

if { $verifyPassword eq "Password Enabled: Yes" } {

   spawn firmwarepasswd -delete
   expect "Enter password:"
   send "8DetAched\r";
   expect {
      "Password incorrect" {
         puts "Trying 2nd password"
         expect eof
         spawn firmwarepasswd -delete
         expect "Enter password:"
         send "Sc1ence&P!\r";
         expect "Password removed"
         puts "Firmware Password Deleted using 2nd Password"
       }
      "Password removed" {
        puts "Firmware Password Deleted using 1st Password"
        }
   }
} else {
		puts "<result>Not Found</result>"
}

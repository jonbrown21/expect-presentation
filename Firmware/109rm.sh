#!/usr/bin/expect

spawn sudo /usr/sbin/setregproptool -d
   expect "*nter current password:*"
   send "8DetAched\r";
   puts "\n\nFirmware Password Deleted using 1st Password"
   expect {
      "*nter current password:*" {
         puts "Trying 2nd password"
         expect eof
         spawn sudo /usr/sbin/setregproptool -d
         expect "*nter current password:*"
         send "Sc1ence&P!\r";
         expect eof
         puts "\n\nFirmware Password Deleted using 2nd Password"
       }
   }
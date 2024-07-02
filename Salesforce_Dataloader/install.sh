#!/bin/bash

mkdir /var/tmp/dataloader_v60.0.1/

curl https://a.sfdcstatic.com/developer-website/media/dataloader/dataloader_v60.0.1.zip > /var/tmp/dataloader_v60.0.1.zip

/usr/bin/unzip -d /var/tmp/dataloader_v60.0.1/ /var/tmp/dataloader_v60.0.1.zip

cd /var/tmp/dataloader_v60.0.1/

xattr -r -d com.apple.quarantine install.command

sleep 5

/usr/bin/expect<<EOF

spawn /var/tmp/dataloader_v60.0.1/install.command

expect "Do you want to install Data Loader in the current folder (/private/var/tmp/dataloader_v60.0.1)? \[Yes/No\]"

send -- "No"
send -- "\r"

expect "Provide the installation folder \[default: dataloader\]"

send -- "\r"

expect "Do you want to create a Desktop shortcut? \[Yes/No\]"

send -- "Yes"
send -- "\r"

expect "Do you want to create a shortcut in Applications folder? \[Yes/No\]"

send -- "Yes"
send -- "\r"

expect eof
EOF

rm -rf /private/var/tmp/dataloader_v60.0.1
rm -rf /private/var/tmp/dataloader_v60.0.1.zip
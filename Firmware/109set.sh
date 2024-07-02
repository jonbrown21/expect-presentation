#!/bin/sh
###
# VERSION 1.0 of the password enabler. Use the same version to disable it.
###
## Fix Permissions
sleep 2
chown root:wheel /usr/sbin/setregproptool
chmod 755 /usr/sbin/setregproptool
# Deactivating the password if it was set. Assuming the password was Detached
sleep 2
# Setting the password and the mode
sudo setregproptool -m command -p "1616DupontP05"
# Logging
echo "The firmware password version is now set up!"
sudo bless -mount /Volumes/Macintosh\ HD -setBoot
exit 0
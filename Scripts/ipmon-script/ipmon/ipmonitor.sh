#!/bin/bash
#
#Get the WAN IP
echo $(curl -s canihazip.com/s) > /home/comhack/.scripts/ipmon/ipmessage.file
#
# Subject
SUBJECT="System IP"
# Email To....
EMAIL="securitybreach@archlinux.us"
# Message
EMAILMESSAGE="/home/comhack/.scripts/ipmon/ipmessage.file"
# Send email
mail -s "$SUBJECT" "$EMAIL" < $EMAILMESSAGE


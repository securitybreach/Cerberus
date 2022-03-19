#
# This is sample script of the send mail for pwrstatd daemon using.
#

#!/bin/sh

# If you want to change SMTP server, edit following parameters into /etc/mail.rc file.
# set smtp=smtp server address
# set smtp-auth-user=user name
# set smtp-auth-password=user password


SUBJECT="PowerPanel Notification - [$EVENT]"
FROM="PowerPanel Daemon <$SENDER_ADDRESS>"
TO="$RECEIPT_NAME <$RECEIPT_ADDRESS>"
MESSAGE="Warning: The $EVENT event has occurred for a while, system will be shutdown immediately!"

DATE=`date +'%Y/%m/%d %p %H:%M'`
test ${#DATE}

RUNTIME=""

if [ $REMAINING_RUNTIME != none ]; then
	RUNTIME="Remaining Runtime: $REMAINING_RUNTIME Seconds"
fi

DATA=(
"========================================================"
"   $SUBJECT"
"========================================================"
""
""
"$MESSAGE"
"Time: $DATE"
""
""
"UPS Model Name: $MODEL_NAME"
"Battery Capacity: $BATTERY_CAPACITY %"
"$RUNTIME"
)

IFS=$'\n'
echo "${DATA[*]}" | mail \
-r   "$FROM" \
-s   "$SUBJECT" \
     "$TO"

exit 0


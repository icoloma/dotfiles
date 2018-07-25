#!/bin/bash
# Configure this in System Settings > Default applications > Mail
# icoloma-open-mail.desktop
google-chrome "https://mail.google.com/mail/u/1?view=cm&tf=0&to=`echo $1 | sed 's/mailto://'`"

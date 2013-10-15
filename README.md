random_password_bash
====================

what is this...?
-----------------
a stupid little script that changes a users password and emails the results
This is used for changing a password for a semi-public account, this is not
meant to be used for any real security.

crontab monthly example
-----------------------
To have this script run automatically at a scheduled time we will use cron.
To do so, type `crontab -e` and then enter:
```
0 0 1 * * /bin/bash /root/passwd_change.sh
```
Where you left the script and how often you want to run it may vary.



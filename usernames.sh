#!/bin/bash
echo "Finding the users' name.........."
sleep 2s
if [[ -f /etc/passwd ]]; then
        echo "User names found"
        sleep 1s
        # As most of the users' default shell is bash and some of the user uses the sh shell.
        grep -E "bash$|sh$" /etc/passwd | cut -d: -f1
else
    echo "No user names not found"
fi

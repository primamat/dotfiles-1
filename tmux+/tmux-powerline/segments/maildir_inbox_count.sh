#!/bin/sh
# Return the number of new mails in my Maildir inbox.

if [ ! -d "$HOME/.mail/inbox/new" ]; then
	exit 1
fi

nbr_new=$(ls $HOME/.mail/inbox/new/ | wc -l)

if [ "$nbr_new" -gt "0" ]; then
	echo "✉ ${nbr_new}"
fi

exit 0;

#!/bin/bash
TIME=`date +%d-%m-%y-%H-%M`                   # This Command will read the date.
FILENAME=website-$TIME.tar.gz    # The filename including the date.
SRCDIR=/var/www/html			        # Source backup folder.
DESDIR=/backup                          # Destination of backup file.
tar -cpzf $DESDIR/$FILENAME -P $SRCDIR
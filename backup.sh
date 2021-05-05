#!/bin/bash
TIME=`date +%d-%m-%y-%H-%M`                # This Command will read the date.
FILENAME=server-$TIME.tar.gz        	   # The filename including the date.
SRCDIR=/home/CB                            # Source backup folder.
DESDIR=/backup                             # Destination of backup file.
tar -cpzf $DESDIR/$FILENAME -P $SRCDIR
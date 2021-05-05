#!/bin/bash
TIME=`date +%d-%m-%y-%H-%M`                 # This Command will read the date.
FILENAME=database-$TIME.sql    # The filename including the date.
DESDIR=/backup                        # Destination of backup file.
mysqldump --all-databases > $DESDIR/$FILENAME

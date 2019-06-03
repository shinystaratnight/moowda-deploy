#!/bin/bash

NOW=$(date +"%Y-%m-%d_%H:%M:%S")
FILENAME="/var/backups/db/$NOW.backup"

mkdir -p /var/backups/db/

docker exec postgres pg_dump --username moowda --dbname moowda -Fc > $FILENAME
ln -f $FILENAME "/var/backups/db/latest.backup"
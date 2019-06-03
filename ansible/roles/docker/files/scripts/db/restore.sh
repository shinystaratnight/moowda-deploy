#!/bin/bash

FILENAME="/var/backups/db/latest.backup"

docker exec -i postgres pg_restore --username team-projector --dbname team-projector -Fc < $FILENAME

#!/bin/bash

# general stuff
# set date for filenames, ee.g. create new folder based on date in .../backup/paperless/{date(DDMMYYYY)}_pg_dump .../backup/paperless{date}_files

# db-backup-stuff
# additional info https://www.postgresql.org/docs/current/libpq-pgpass.html
# connect to paperless pg_db, pg_dump into file, close connection, 
# return succeess or fail
pg_dump -h localhost -p 5454 -U paperless paperless > ./paperless_backup/backupfilename

# file-backup stuff
# remote access paperless-dockerstack see https://docs.docker.com/engine/security/protect-access/ ???
# see https://docs.paperless-ngx.com/administration/#exporter
# connect to paperless_webserver, export all files into a zip, close connection
# return success or fail
docker compose exec -T webserver document_exporter ../export



#document_exporter target [-c] [-d] [-f] [-na] [-nt] [-p] [-sm] [-z]
#optional arguments:
#-c,  --compare-checksums
#-d,  --delete
#-f,  --use-filename-format
#-na, --no-archive
#-nt, --no-thumbnail
#-p,  --use-folder-prefix
#-sm, --split-manifest
#-z,  --zip
#-zn, --zip-name
#--data-only
#--no-progress-bar
#--passphrase

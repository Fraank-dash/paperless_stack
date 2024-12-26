#!/bin/bash

# general stuff
# set date for filenames, ee.g. create new folder based on date in .../backup/paperless/{date(DDMMYYYY)}_pg_dump .../backup/paperless{date}_files

# db-backup-stuff
# additional info https://www.postgresql.org/docs/current/libpq-pgpass.html
# connect to paperless pg_db, pg_dump into file, close connection, 
# return succeess or fail

# file-backup stuff
#remote access paperless-dockerstack see https://docs.docker.com/engine/security/protect-access/ ???
# connect to paperless_webserver, export all files into a zip, close connection
# return success or fail

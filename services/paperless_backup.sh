#!/bin/bash

# general stuff
# set date for filenames, ee.g. create new folder based on date in .../backup/paperless/{date(DDMMYYYY)}_pg_dump .../backup/paperless{date}_files

# db-backup-stuff
# connect to paperless pg_db, pg_dump into file, close connection, 
# return succeess or fail

# file-backup stuff
# connect to paperless_webserver, export all files into a zip, close connection
# return success or fail

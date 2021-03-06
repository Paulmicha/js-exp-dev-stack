#!/usr/bin/env bash

##
# [abstract] Destroys (deletes) database.
#
# @param 1 [optional] String : $DB_NAME override.
#
# This script provides an entry point for triggering a specific hook. "Abstract"
# means that this extension doesn't provide any actual implementation for this
# functionality. In order for this script to have any effect, it is necessary
# to use an extension that does. E.g. :
# @see cwt/extensions/mysql
#
# @example
#   make db-destroy
#   make db-destroy 'custom_db_name'
#   # Or :
#   cwt/extensions/db/db/destroy.sh
#   cwt/extensions/db/db/destroy.sh 'custom_db_name'
#

. cwt/bootstrap.sh
u_db_destroy "$@"

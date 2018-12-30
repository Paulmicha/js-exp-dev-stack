#!/usr/bin/env bash

##
# Implements hook -s 'app' -a 'watch' -v 'PROVISION_USING HOST_TYPE INSTANCE_TYPE'.
#
# To list all the possible paths that can be used - among which existing files
# will be sourced when the hook is triggered, use :
# $ make hook-debug s:app a:watch v:PROVISION_USING HOST_TYPE INSTANCE_TYPE
#
# @example
#   make app-watch
#   # Or :
#   cwt/app/watch.sh
#

# npm run watch
yarn run watch

#!/usr/bin/env bash

##
# Implements hook -s 'app' -a 'compile' -v 'PROVISION_USING HOST_TYPE INSTANCE_TYPE'.
#
# To list all the possible paths that can be used - among which existing files
# will be sourced when the hook is triggered, use :
# $ make hook-debug s:app a:compile v:PROVISION_USING HOST_TYPE INSTANCE_TYPE
#
# @example
#   make app-compile
#   # Or :
#   cwt/app/compile.sh
#

# npm run build
yarn run build

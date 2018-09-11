#!/usr/bin/env bash

##
# Implements hook -s 'instance' -p 'pre' -a 'rebuild' -v 'PROVISION_USING HOST_TYPE INSTANCE_TYPE'
#
# Reacts before "instance rebuild" for project instances using 'docker-compose' as
# provisioning method ($PROVISION_USING).
#
# @see cwt/extensions/docker-compose/instance/instance.inc.sh
#
# To list all the possible paths that can be used - among which existing files
# will be sourced when the hook is triggered, use :
# $ make hook-debug s:instance p:pre a:rebuild v:PROVISION_USING HOST_TYPE INSTANCE_TYPE
#
# @example
#   make rebuild
#   # Or :
#   cwt/instance/rebuild.sh
#

scripts/init.sh

#!/usr/bin/env bash

##
# [abstract] Installs required software on current host.
#
# This script provides an entry point for triggering a specific hook. "Abstract"
# means that CWT core itself doesn't provide any actual implementation for this
# functionality. In order for this script to have any effect, it is necessary
# to use an extension that does.
#
# To list all the possible paths that can be used - among which existing files
# will be sourced when the hook is triggered, use :
# $ make hook-debug s:host a:provision v:HOST_OS HOST_TYPE PROVISION_USING
#
# @example
#   make host-provision
#   # Or :
#   cwt/host/provision.sh
#

. cwt/bootstrap.sh

hook -s 'host' -a 'provision' -v 'HOST_OS HOST_TYPE PROVISION_USING'

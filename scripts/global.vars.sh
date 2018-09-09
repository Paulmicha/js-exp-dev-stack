#!/usr/bin/env bash

##
# Prototype-specific CWT globals.
#
# This file is used during "instance init" to generate the global environment
# variables specific to current project instance.
#
# @see scripts/init.sh
# @see u_instance_init() in cwt/instance/instance.inc.sh
# @see cwt/utilities/global.sh
#

# @see cwt/extensions/docker-compose/instance/bootstrap.docker-compose.hook.sh
global DC_MODE 'generate'
global DC_YML_VARIANTS "$INSTANCE_TYPE $HOST_TYPE"

# @see cwt/extensions/js-exp-1/stack/nodejs/Dockerfile
# @see cwt/extensions/js-exp-1/stack/docker-compose.yml
global NODE_TAG '10.4-alpine'

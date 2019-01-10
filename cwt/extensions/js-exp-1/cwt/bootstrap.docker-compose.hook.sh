#!/usr/bin/env bash

##
# Implements hook -a 'bootstrap' -v 'PROVISION_USING'.
#
# Implement custom bash alias for "js-exp-1".
#
# @see cwt/bootstrap.sh
# @see cwt/extensions/docker-compose/cwt/pre_bootstrap.docker-compose.hook.sh
#

alias node="docker-compose exec $DC_TTY web node"
alias npm="docker-compose exec $DC_TTY web npm"
alias npx="docker-compose exec $DC_TTY web npx"
alias yarn="docker-compose exec $DC_TTY web yarn"

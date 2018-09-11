#!/usr/bin/env bash

##
# Implements hook -a 'bootstrap' -v 'PROVISION_USING'.
#
# Implement custom bash alias for "js-exp-1".
#
# @see cwt/bootstrap.sh
#

# Disable pseudo-tty allocation unless current shell is interactive.
# By default 'docker-compose exec|run' allocates a TTY.
# See https://docs.docker.com/compose/reference/run/
# See https://docs.docker.com/compose/reference/exec/
# See https://unix.stackexchange.com/questions/26676/how-to-check-if-a-shell-is-login-interactive-batch
T_flag='-T'
case $- in *i*)
  T_flag=''
esac

alias node="docker-compose run $T_flag web node"
alias npm="docker-compose run $T_flag web npm"
alias yarn="docker-compose run $T_flag web yarn"
# alias parcel="docker-compose run $T_flag web parcel"

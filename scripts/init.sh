#!/usr/bin/env bash

##
# (Re)initializes current project instance.
#
# @example
#
#   # Init instance locally using defaults (dev local).
#   scripts/init.sh
#
#   # Init instance locally using production config.
#   scripts/init.sh prod
#

# Defaults (overridable using parameters to this script).
instance_type='dev'
host_type='local'
provision_using='docker-compose'

if [[ -n "$1" ]]; then
  instance_type="$1"
fi

if [[ -n "$2" ]]; then
  host_type="$2"
fi

if [[ -n "$3" ]]; then
  instance_domain="$3"
else
  # Generates a default domain name based on current dir name and local host IP.
  . cwt/host/host.inc.sh
  . cwt/instance/instance.inc.sh
  instance_domain=$(u_instance_domain)
fi

if [[ -n "$4" ]]; then
  provision_using="$4"
fi

echo "(Re)initializing prototype $instance_domain instance (t:$instance_type h:$host_type p:$provision_using) ..."

cwt/instance/init.sh \
  -t "$instance_type" \
  -d "$instance_domain" \
  -a "$PWD/web/dist" \
  -h "$host_type" \
  -p "$provision_using" \
  -g 'git@github.com:Paulmicha/ieml-js-exp.git' \
  -i "$PWD/web" \
  -y

if [[ $? -ne 0 ]]; then
  echo >&2
  echo "Error in $BASH_SOURCE line $LINENO: 'instance init' failed." >&2
  echo "-> Aborting (1)." >&2
  echo >&2
  exit 1
fi

# (re)Init is successful, so NOW we can load the updated env vars in current
# shell scope.
. cwt/bootstrap.sh

echo "(Re)initializing prototype $instance_domain instance (t:$instance_type h:$host_type p:$provision_using) : done."
echo

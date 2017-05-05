#!/usr/bin/env bash
#
# Usage:
#   ./collab.sh local to do a sed that replaces upstream package name with local
#   ./collab.sh upstream to do a sed that replaces local package name with upstream
#

choice=0
case $1 in
  local) choice=0 ;;
  upstream) choice=1 ;;
  *) echo invalid parameter $1 ; exit 1 ;;
esac

if [[ $choice = 0 ]]; then
  sed -i 's/ChimeraCoder/daniellowtw/g' **/*.go
fi

if [[ $choice = 1 ]]; then
  sed -i 's/daniellowtw/ChimeraCoder/g' **/*.go
fi

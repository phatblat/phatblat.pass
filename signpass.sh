#!/bin/bash -e

#
# signpass.sh
# Signs a .pass bundle
#

cmd="signpass/bin/signpass"
pass="phatblat.pass"

if [ ! -f ${cmd} ]; then
    echo "${cmd} not found! Please build the xignpass.xcodeproj first, then re-run this script."
    exit 1
fi

"${cmd}" -p "${pass}"

if [[ $? ]]; then
  exit 1
fi

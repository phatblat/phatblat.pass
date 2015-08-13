#!/bin/bash -e

#
# signpass.sh
# Signs .pass bundle
#

cmd="signpass/bin/signpass"
pass="Generic.pass"

if [ ! -f ${cmd} ]; then
    echo "${cmd} not found! Please build the xignpass.xcodeproj first, then re-run this script."
    exit 1
fi

"${cmd}" -p "${pass}"

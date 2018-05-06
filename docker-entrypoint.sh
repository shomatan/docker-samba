#!/bin/sh
#
# -----------------------------------------------------------------------------
set +e

echo "** Preparing Samba"

echo "########################################################"

echo "** Executing Samba"

/usr/sbin/smbd -D
tail -f /var/log/samba/log.smbd
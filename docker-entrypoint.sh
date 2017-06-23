set +e

echo "** Preparing Samba"

echo "########################################################"

echo "** Executing samba"

/usr/sbin/smbd -D
tail -f /var/log/samba/log.smbd
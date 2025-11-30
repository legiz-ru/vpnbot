cat /ssh/key.pub > /root/.ssh/authorized_keys
ssh-keygen -A
exec /usr/sbin/sshd -D -e "$@" &
hysteria server -c /config/hysteria.yaml &
tail -f /dev/null

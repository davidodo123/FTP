#!/usr/bin/env bash
set -e
export DEBIAN_FRONTEND=noninteractive

apt-get update -y
apt-get install -y vsftpd

# Config b?sica segura
cat >/etc/vsftpd.conf <<'EOF'
listen=YES
listen_ipv6=NO
pam_service_name=vsftpd

# Acceso local RW, an?nimo desactivado
anonymous_enable=NO
local_enable=YES
write_enable=YES
local_umask=022

# Jaula: todos enjaulados salvo los listados
chroot_local_user=YES
chroot_list_enable=YES
chroot_list_file=/etc/vsftpd.chroot_list
allow_writeable_chroot=YES
EOF

echo "maria" >/etc/vsftpd.chroot_list || true

systemctl enable vsftpd
systemctl restart vsftpd
echo "[ftp] Provision OK"
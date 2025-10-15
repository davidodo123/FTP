#!/usr/bin/env bash
set -euo pipefail

# Paquetes
apt-get update -y
apt-get install -y bind9 bind9utils dnsutils

# Forzar IPv4
echo 'OPTIONS="-u bind -4"' > /etc/default/named

# Liberar puerto 53 de systemd-resolved
sed -i 's/^#\?DNSStubListener=.*/DNSStubListener=no/' /etc/systemd/resolved.conf
systemctl restart systemd-resolved || true

# Copiar configs desde carpeta compartida
install -m 644 -o root -g bind /vagrant/config/named.conf.options /etc/bind/
install -m 644 -o root -g bind /vagrant/config/named.conf.local   /etc/bind/
install -m 644 -o root -g bind /vagrant/config/david.test.dns     /etc/bind/db.david.test
install -m 644 -o root -g bind /vagrant/config/david.test.rev     /etc/bind/db.192.168.56

# Validar
named-checkconf
named-checkzone david.test /etc/bind/db.david.test
named-checkzone 56.168.192.in-addr.arpa /etc/bind/db.192.168.56

# Arrancar servicio
systemctl enable --now bind9
systemctl restart bind9

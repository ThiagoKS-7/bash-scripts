#!/bin/bash

read -p "Digite f para ip fixo ou d para dinâmico: " type
rm -rf /etc/network/interfaces
if [$type == "f"]; then
  echo "[INFO] Editando conf para IP fixo..."
echo"# This file describes the network interfaces available on your system
# and hou to activate them. For more information, see interfaces()

source /etc/network/interfaces.d/*

#The loopback network interface
auto lo
iface lo inet loopback

#ip fixo
auto enp0s3
allow-hotplug enp0s3
iface enp03 inet static
  address 10.0.0.100
  netmask 255.255.255.0
  gateway 10.0.0.1" >> /etc/network/interfaces
else
  echo "[INFO] Editando cof para ip dinamico..."
  echo"# This file describes the network interfaces available on your system
# and hou to activate them. For more information, see interfaces()

source /etc/network/interfaces.d/*

#The loopback network interface
auto lo
iface lo inet loopback

#ip dinamico
auto enp0s3
allow-hotplug enp0s3
iface enp03 inet dhcp" >> /etc/network/interfaces
fi
/etc/init.d/networking restart
/etc/init.d/networking status
echo "[INFO] ARQUIVO EDITADO COM SUCESSO!"

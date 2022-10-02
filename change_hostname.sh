#!/bin/bash
read -p "Digite o novo nome: " nome
rm -rf /etc/hostname
echo $nome >> /etc/hostname
reboot
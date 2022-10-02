#!/bin/bash

if grep -q "static" /etc/network/interfaces;
then
echo "ip fixo"
else
echo "ip dinamico"
fi
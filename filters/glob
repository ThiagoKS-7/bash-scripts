#!/bin/bash


cd
cd linux/glob

while getopts n: flag
do
  case "${flag}" in
    n) path=${OPTARG};;
  esac
done
if [ ${#path} -gt 0 ];
then
  echo "[INFO] Resultados de $path"
  ls $path? || echo "[INFO] Nada encontrado de 0 a 9"
  ls $path?? || echo "[INFO] Nada encontrado de 10 a 99"
  ls $path??? ||echo "[INFO] Nada encontrado de 100 a 999"
else
  echo "[ERROR] Nenhum parametro encontrado."
  echo "[INFO] Use -n para informar nome do arquivo para filtrar"
fi



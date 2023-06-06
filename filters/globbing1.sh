  GNU nano 4.8                                                                                      ./filtros.sh                                                                                       Modified
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
  ls -s  -R 2>/dev/null $path? || echo "[INFO] Nada encontrado de 0 a 9"
  ls -s -R 2>/dev/null "$path"1? || echo "[INFO] Nada encontrado de 10 a 99"
  ls -s -R 2>/dev/null "$path"2? || echo "[INFO] Nada encontrado de 20 a 29"
  ls -s -R 2>/dev/null "$path"3? || echo "[INFO] Nada encontrado de 30 a 39"
  ls -s -R 2>/dev/null "$path"4? || echo "[INFO] Nada encontrado de 40 a 49"
  ls -s -R 2>/dev/null "$path"5? || echo "[INFO] Nada encontrado de 50 a 59"
  ls -s -R 2>/dev/null "$path"6? || echo "[INFO] Nada encontrado de 60 a 69"
  ls -s -R 2>/dev/null "$path"7? || echo "[INFO] Nada encontrado de 70 a 79"
  ls -s -R 2>/dev/null "$path"8? || echo "[INFO] Nada encontrado de 80 a 89"
  ls -s -R 2>/dev/null "$path"9? || echo "[INFO] Nada encontrado de 90 a 99"
  ls -s -R 2>/dev/null "$path"10? || echo "[INFO] Nada encontrado de 100 a 109"
else
  echo "[ERROR] Nenhum parametro encontrado."
  echo "[INFO] Use -n para informar nome do arquivo para filtrar"
fi

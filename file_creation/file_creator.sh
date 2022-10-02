#!/bin/bash
echo "[INFO] Criando pastas..."
home=/home
aulas=$home/aulas
mkdir $aulas
pastas=(
	[0]=$aulas/aula1
	[1]=$aulas/aula2
	[2]=$aulas/aula3
	[3]=$home/filmes
	[4]=$home/musicas
	[5]=$home/series
)

arquivos=(
	[0]=$aulas/aula1/exercicio1.txt
	[1]=$aulas/aula1/exercicio2.txt
	[2]=$aulas/aula3/exercicio3.txt
	[3]=$aulas/aula3/exercicio4.txt
	[4]=$home/lista_de_compras.txt
)

for pasta in "${pastas[@]}"
do
	mkdir $pasta
done

for arquivo in "${arquivos[@]}"
do
	touch $arquivo
done
echo "[INFO] Pastas criadas com sucesso!"

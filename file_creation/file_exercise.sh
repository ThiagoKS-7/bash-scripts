#!/bin/bash

r=/home
ext=.txt

aulas=(
	[0]=$r/aulas/aula1
	[1]=$r/aulas/aula2
	[2]=$r/aulas/aula3
)
# aula1=$r/aulas/aula1
# aula2=$r/aulas/aula2
# aula3=$r/aulas/aula3

Documents=$r/Documents

excs=(
	[0]=$aulas[0]/exercicio1$ext
	[1]=$aulas[0]/exercicio2$ext
	[2]=$aula[2]/exercicio3$ext
	[3]=$aula[2]/exercicio4$ext
	[4]=$aula[0]/exercicio5$ext
)

cp $excs[0] $aulas[1]
mv $excs[1] $aulas[1]
mkdir $Documents
cp $excs[2] $Documents
mv $exc[3] $aulas[0]
mv $aulas[0]/exercicio4$ext $excs[4]
echo "[INFO] Fluxo aulas done!"

filmes=$r/filmes
n_filmes=(
	[0]=filme1
	[1]=filme2
	[2]=filme3
	[3]=filme4
	[4]=filme5
)
for n_filme in "${n_filmes[@]}"
do
	mkdir $filmes/$n_filme
done
echo "[INFO] Pasta filmes done!"

for filme in "${n_filmes[@]}"
do
	atores=(
		[0]=ator1$ext
		[1]=ator2$ext
		[2]=ator3$ext
	)
	for ator in "${atores[@]}"
	do
		touch $filmes/$filme/$ator
	done
done
echo "[INFO] Arquivos atores done!"

mv $filmes/filme1 $r/series
echo "[INFO] Filme1 movido para series!"

touch $r/musicas/lista_musicas$ext
cp $home/musicas/lista_musicas$ext /
echo "[INFO] lista_musicas movida para a pasta raíz!"

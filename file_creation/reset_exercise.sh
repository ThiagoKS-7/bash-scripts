#!/bin/bash
pastas=(
	[0]=Documents
	[1]=aulas
	[2]=musicas
	[3]=lista_de_compras.txt
	[4]=series
	[5]=filmes
)
for pasta in "${pastas[@]}"
do
	rm -rf /home/$pasta
done
echo "[INFO] Pastas removidas com sucesso!"
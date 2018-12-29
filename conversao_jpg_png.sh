#!/bin/bash

converte_imagem(){
cd ~/Downloads/imagens-livros

sleep 2

echo "Verificando se existe pasta png, se nao cria uma pasta"
sleep 2

if [ ! -d png ]
then
	mkdir png
fi

echo "Convertendo imagens .jpg para .png"
sleep 3

for imagem in *.jpg
do 
	local imagem_sem_extensao=$(ls $imagem | awk -F. '{ print $1 }')

	convert $imagem_sem_extensao.jpg png/$imagem_sem_extensao.png
done
}

converte_imagem 2> erros_conversao.txt

if [ $? -eq 0 ]
then
	echo "Conversao realizada com sucesso"
else
	echo "Houve uma falha na processo, logs de erros no arquivo erros_conversao.txt"
fi

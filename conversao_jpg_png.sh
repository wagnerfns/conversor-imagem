#!/bin/bash

cd ~/Downloads/imagens-livros

sleep 3

echo 'Verificando se existe pasta png, se nao cria uma'
sleep 3

if [ ! -d png ]
then
	mkdir png
fi

echo 'Convertendo imagens .jpg para .png'
sleep 3

for imagem in *.jpg
do 
	imagem_sem_extensao=$(ls $imagem | awk -F. '{ print $1 }')

	convert $imagem_sem_extensao.jpg $imagem_sem_extensao.png
done

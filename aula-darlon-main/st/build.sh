#!/bin/bash

VERSAO="0.1"
DHUSER="darlon"

## Download da imagem python
docker pull python

## Cria a imagem base
docker build -t ${DHUSER}/st:base -f Dockerfile_base .

## Cria a imagem com a aplicação
docker build --no-cache -t ${DHUSER}/st:${VERSAO} .

## Define a nova imagem como latest
docker tag ${DHUSER}/st:${VERSAO} ${DHUSER}/st


#Push das imagens para o Docker Hub
docker login
docker push ${DHUSER}/st:base
docker push ${DHUSER}/st:${VERSAO}
docker push ${DHUSER}/st
#docker logout

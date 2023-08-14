#!/bin/bash

VERSAO="0.1"
DHUSER="katleyc"

## Download da imagem java
docker pull opendjk:22-bullseye

## Cria a imagem 
docker build -t ${DHUSER}/openjdk:${VERSAO} .

## Define a nova imagem como latest
docker tag ${DHUSER}/openjdk:${VERSAO} ${DHUSER}/openjdk

## Push das imagens para o Docker Hub
docker login 
docker push ${DHUSER}/openjdk:${VERSAO}
docker push ${DHUSER}/openjdk



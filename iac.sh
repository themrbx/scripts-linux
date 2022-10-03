#!/usr/bin/env bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos..."

groupadd GRP_VEN
groupadd GRP_SEC
groupadd GRP_ADM

echo "Criando usuários..."

useradd user1 -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_ADM
useradd user2 -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_ADM
useradd user3 -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_ADM

useradd user4 -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_SEC
useradd user5 -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_SEC
useradd user6 -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_SEC

useradd user7 -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_VEN
useradd user8 -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_VEN
useradd user9 -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_VEN

echo "Especificando permissões dos diretórios"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Finalizado"
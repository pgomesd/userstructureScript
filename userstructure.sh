#!/bin/bash

echo "Criando diretórios..."

mkdir /publico/
mkdir /adm/
mkdir /ven/
mkdir /sec/

echo "Criando grupos..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."
useradd carlos -c "Carlos" -s /bin/bash -m -p $(openssl passwd -1 Senha123) -G GRP_ADM
passwd carlos -e

useradd maria -c "Maria" -s /bin/bash -m -p $(openssl passwd -1 Senha123) -G GRP_ADM
passwd maria -e

useradd joao -c "João" -s /bin/bash -m -p $(openssl passwd -1 Senha123) -G GRP_ADM
passwd joao -e

useradd debora -c "Debora" -s /bin/bash -m -p $(openssl passwd -1 Senha123) -G GRP_VEN
passwd debora -e

useradd sebastiana -c "Sebastiana" -s /bin/bash -m -p $(openssl passwd -1 Senha123) -G GRP_VEN
passwd sebastiana -e

useradd roberto -c "Roberto" -s /bin/bash -m -p $(openssl passwd -1 Senha123) -G GRP_VEN
passwd roberto -e

useradd josefina -c "Josefina" -s /bin/bash -m -p $(openssl passwd -1 Senha123) -G GRP_SEC
passwd josefina -e

useradd amanda -c "Amanda" -s /bin/bash -m -p $(openssl passwd -1 Senha123) -G GRP_SEC
passwd amanda -e

useradd rogerio -c "Rogerio" -s /bin/bash -m -p $(openssl passwd -1 Senha123) -G GRP_SEC
passwd rogerio -e

echo "Alterando permissões..."

chmod 777 /publico/

chmod 770 /adm/
chown root:GRP_ADM /adm/

chmod 770 /ven/
chown root:GRP_VEN /ven/

chmod 770 /sec/
chown root:GRP_SEC /sec/

echo "Finalizado!"



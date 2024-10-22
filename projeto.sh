#!bin/bash

echo "Criando diretórios"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando Grupos"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Alterando o grupo dos diretórios"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Mudando permissões dos diretórios"

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Criando usuários"

useradd carlos -c "Carlos" -m -s /bin/bash -G GRP_ADM -p $(openssl passwd -6 Senha123)
useradd maria -c "Maria" -m -s /bin/bash -G GRP_ADM -p $(openssl passwd -6 Senha123)
useradd joao -c "João" -m -s /bin/bash -G GRP_ADM -p $(openssl passwd -6 Senha123)

useradd debora -c "Debora" -m -s /bin/bash -G GRP_VEN -p $(openssl passwd -6 Senha123)
useradd sebastiana -c "Sebastiana" -m -s /bin/bash -G GRP_VEN -p $(openssl passwd -6 Senha123)
useradd roberto -c "Roberto" -m -s /bin/bash -G GRP_VEN -p $(openssl passwd -6 Senha123)

useradd josefina -c "Josefina" -m -s /bin/bash -G GRP_SEC -p $(openssl passwd -6 Senha123)
useradd amanda -c "Amanda" -m -s /bin/bash -G GRP_SEC -p $(openssl passwd -6 Senha123)
useradd rogerio -c "Rogerio" -m -s /bin/bash -G GRP_SEC -p $(openssl passwd -6 Senha123)

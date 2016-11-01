#!/bin/sh
tput setaf 3; echo "Script instalador criado por Phreaker56 \nEste script instalará os seguintes scripts como comandos do sistema:"  ; tput sgr0
echo "\ncriarusuario (para facilitar a criação de usuários sem acesso ao terminal e com data de expiração) \nexpcleaner (para remover usuários expirados do sistema) \nsshlimiter (para impedir multi login, permitindo apenas uma conexão por usuário) \naddhost (para facilitar liberar domínios ou 'hosts' no squid3)\nsshmonitor (para verificar os usuários conectados)\nlistar (para listar os usuários e datas de expiração)\n" ; tput sgr0
tput setaf 2 ; echo "Recomendado apenas para servidores VPS configurados de acordo com o tutorial escrito por Phreaker56" ; tput sgr0
read -p "Aperte ENTER para continuar ou CTRL+C para cancelar..." null
sleep 1
apt-get update -y
apt-get install bc dos2unix wget screen perl -y
wget http://pastebin.com/raw/ks4t2VaS -O /bin/criarusuario
dos2unix /bin/criarusuario
chmod +x /bin/criarusuario
wget http://pastebin.com/raw/4iTN0YtY -O /bin/expcleaner
dos2unix /bin/expcleaner
chmod +x /bin/expcleaner
wget http://pastebin.com/raw/yuDq8x0s -O /bin/sshlimiter
dos2unix /bin/sshlimiter
chmod +x /bin/sshlimiter
wget http://pastebin.com/raw/jz3BjUwR -O /bin/addhost
dos2unix /bin/addhost
chmod +x /bin/addhost
wget http://pastebin.com/raw/cBiJuamm -O /bin/listar
dos2unix /bin/listar
chmod +x /bin/listar
wget http://pastebin.com/raw/Ygv5e2AP -O /bin/sshmonitor
dos2unix /bin/sshmonitor
chmod +x /bin/sshmonitor
wget http://pastebin.com/raw/eUFgW3C4 -O /bin/ajuda
dos2unix /bin/ajuda
chmod +x /bin/ajuda
tput setaf 3; echo "\nScripts instalados como comandos do sistema. Para verificar e aprender a usar os scripts use o comando:\najuda\n" ; tput sgr0
exit 1
#!/bin/bash
clear
echo -e "\033[1;32m==============================="
echo -e "      MARCONES_MS - SSH"
echo -e " Painel de Gerenciamento VPS"
echo -e "===============================\033[0m"

# Verifica se o usuário é root
[ "$(id -u)" != "0" ] && {
   echo -e "\033[1;31mVocê precisa ser ROOT para executar este script.\033[0m"
   exit 1
}

# Diretório base
[[ -d /etc/MARCONES_MS ]] || mkdir /etc/MARCONES_MS

# Instalação de dependências
apt-get update -y
apt-get install -y wget curl unzip bc netcat python3 python3-pip > /dev/null 2>&1

# Baixando arquivos necessários (simulação de um menu)
cd /etc/MARCONES_MS
echo -e "\033[1;34mBaixando arquivos do painel...\033[0m"
wget -q https://raw.githubusercontent.com/modderajuda/donomodderajuda/main/Plus > /dev/null 2>&1
mv Plus menu.sh
chmod +x menu.sh

# Criando atalho global
ln -sf /etc/MARCONES_MS/menu.sh /bin/h
chmod +x /bin/h

clear
echo -e "\033[1;32mInstalação concluída!\033[0m"
echo -e "Use o comando \033[1;33mh\033[0m para abrir o painel."

echo -e "\033[1;32m============================================"
echo -e " Script criado por: MARCONES_MS"
echo -e " GitHub: https://github.com/Marconesds1"
echo -e " Telegram: @marcones_ms"
echo -e "============================================\033[0m"

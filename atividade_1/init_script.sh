#!/bin/bash
set -o errexit

echo "Updating OS"
apt update -y

echo "Installing Apache"
apt install apache2 -y

echo "Replacing default HTML page"
echo "<h1>Trabalho 01 - MC714</h1><h3>Abaixo temos os dados da maquina virtual:</h3><p><b>Hostname:</b> $(hostname -s)</p><p><b>Internal IP:</b> $(hostname -i)</p>" | tee /var/www/html/index.html
echo "Finished"

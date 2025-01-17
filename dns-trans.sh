#!/bin/bash

echo "Insira o dominio"
echo "============================================================"
read dominio
echo "============================================================"
echo "==========Efetuando a pesquisa pelos servidores DNS========="
host -t NS $dominio | cut -d " " -f4 | sed 's/.$//'
echo "============================================================"
echo "===========Verificando a transferencia de Zona DNS=========="
for ns in $(host -t NS $dominio | cut -d " " -f4 | sed 's/.$//');do dig axfr $dominio @$ns;done
echo "============================================================"
echo "=Fim da pesquisa de servidores e  transferencia de Zona DNS="

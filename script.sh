#bin/bash

#variável para criar o nome do arquivo gerado com a data e hora atual
#não deve ter espaços antes e depois do “=”
DATA=`date +%Y-%m-%d_%H:%M:%S`

#limpar o diretorio indicado(exclui arquivos existentes)
rm -rf /diretorio/que/ficara/salvo/localmente

#exportar banco de dados
mysqldump -u usuarioBanco-psenhaBanco nomeDoBanco > /diretorio/que/ficara/salvo/localmente/nomeDoAquivo_”$DATA”.sql

#variaveis para identificar o servidor destino
ip = “192.168.1.1”
user=”userServidorDestino”
password=”senhaServidorDestino”

#enviar arquivo para outro servidor
sshpass -p “$password” scp diretorio/origem/nomeDoAquivo_”$DATA”.sql “user”@”ip”:/diretorio/destino/nomeDoAquivo_”$DATA”.sql

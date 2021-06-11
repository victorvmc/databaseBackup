# databaseBackup
automate database backup and send it to another server | automatizar backup de um banco de dados e enviar para outro servidor

É necessário conceder a permissão de execução do script, para isso utiliza-se:                                                                                         <p> sudo chmod +x nomeDoScript.sh </p>

Após isso é necessário configurar para o script ser rodado periodicamente, para isso usa-se o crontab, para acessá-lo é com o comando crontab -e, no primeiro acesso ele pode perguntar qual editor de preferência, ele indica o nano. No final do arquivo deve ser acrescentada a linha para indicar o período, segue o exemplo:

  <p>  minuto | hora | dia do mês | mês | dia da semana | comando </p>
  <p> m h dom mon dow command  </p>
  <p> */5 * * * 1-5 diretorio/do/script/nomeDoScript.sh  </p>
 
No exemplo, o script será executado a cada 5 minutos de segunda a sexta.

Extra:
Visto que o script possui informações sensíveis tais como usuário e senha de servidor e banco de dados, uma opção é tirar a permissão de leitura do arquivo com o seguinte comando:

<p>sudo chmod 711 script.sh</p>

Dessa forma somente o super usuário poderá ler o script, o que já torna uma barreira a mais.

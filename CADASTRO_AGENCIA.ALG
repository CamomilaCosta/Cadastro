Algoritmo "cadastro_agencia"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi
const
   max = 5
Var
   nomeCliente: vetor[1..max] de caractere
   telefoneCliente: vetor[1..max] de inteiro
   cpfCliente: vetor[1..max] de inteiro
   nomeDestino: vetor[1..max] de caractere
   diasDestino: vetor[1..max] de inteiro
   precoDestino: vetor[1..max] de real
   i, opcMenu, opcmenu2, iCliente, iDestino: inteiro
   buscaNome, buscaDestino: caractere

procedimento mostarMenu()
inicio
   escreval("------------------------")
   escreval("---Ag�ncia de viagens---")
   escreval("------------------------")
   escreval("--------M E N U---------")
   escreval("------------------------")
   Escreval("O que deseja fazer?")
   Escreval("[1] Cadastrar clientes")
   Escreval("[2] Cadastrar destinos")
   Escreval("[3] Consultar clientes")
   Escreval("[4] Consultar destinos")
   escreval("[5] Encerrar")
   leia(opcMenu)
fimprocedimento

procedimento menu2()
inicio
   escreval("O que deseja fazer?")
   escreval("[1] Voltar ao menu principal")
   escreval("[5] Encerrar")
   leia(opcMenu2)
   se opcMenu2 = 5 entao
      escreva("PROGRAMA ENCERRADO")
   fimse
fimprocedimento

procedimento cadastraCliente()
inicio
   limpatela
   para i de 1 ate max faca
      escreval("Digite os dados do ",i,"� cliente: ")
      escreva("Nome completo: ")
      leia(nomeCliente[i])
      escreva("Telefone (somente n�meros): ")
      telefoneCliente[i] <- randi(500)
      escreva("CPF (somente n�meros): ")
      cpfCliente[i] <- randi(500)
   fimpara
   limpatela
   escreval("------------------------")
   escreval("-Clientes  cadastrados!-")
fimprocedimento

procedimento cadastraDestino()
inicio
   limpatela
   para i de 1 ate max faca
      escreval("Digite os dados do ",i,"� Destino: ")
      escreva("Nome: ")
      leia(nomeDestino[i])
      escreva("Dias de dura��o da viagem(SOMENTE N�MEROS: ")
      diasDestino[i] <- randi(10)
      escreva("Pre�o do pacote (SOMENTE N�MEROS): ")
      precoDestino[i] <- randi(1000)
   fimpara
   limpatela
   escreval("------------------------")
   escreval("-Destino  cadastrados!-")
fimprocedimento


funcao consultaCliente(cliente: caractere) : inteiro
var
   c: inteiro
   achou: logico

inicio
   c <- 1
   achou <- falso
   enquanto (c <= max) e (achou = falso) faca
      se (maiusc(nomeCliente[c]) = maiusc(cliente)) entao
         achou <- verdadeiro
         retorne c
      senao
         c <- c +1
      fimse
   fimenquanto
   retorne c
fimfuncao

funcao consultaDestino(destino: caractere) : inteiro
var
   c: inteiro
   achou: logico

inicio
   c <- 1
   achou <- falso
   enquanto (c <= max) e (achou = falso) faca
      se (maiusc(nomeDestino[c]) = maiusc(destino)) entao
         achou <- verdadeiro
         retorne c
      senao
         c <- c +1
      fimse
   fimenquanto
   retorne c

fimfuncao

Inicio
   repita
      mostarMenu()
      escolha opcMenu
      caso 1
         cadastraCliente()
      caso 2
         cadastraDestino()
      caso 3
         limpatela
         escreva("Digite o nome do cliente que deseja buscar: ")
         leia(buscaNome)
         iCliente <- consultaCliente(buscaNome)
         se (iCliente = max +1) entao
            escreval("Cliente n�o encontrado na base de dados")
         senao
            escreval("Esses s�o os dados do cliente: ")
            escreval("Nome: ", nomeCliente[iCliente])
            escreval("Telefone: ", telefoneCliente[iCliente])
            escreval("CPF: ", cpfCliente[iCliente])
         fimse
         menu2()
      caso 4
         limpatela
         escreva("Digite o nome do destino que deseja buscar: ")
         leia(buscaDestino)
         iDestino <- consultaDestino(buscaDestino)
         se (iDestino = max +1) entao
            escreval("Destino n�o encontrado na base de dados")
         senao
            escreval("Esses s�o os dados do destino: ")
            escreval("Lugar: ", nomeDestino[iDestino])
            escreval("Dura��o da viagem: ", telefoneCliente[iDestino], " dias")
            escreval("Pre�o do pacote: R$", cpfCliente[iDestino])
         fimse
         menu2()
      caso 5
         escreval("PROGRAMA ENCERRDO")
      outrocaso
         limpatela
         escreval("Op��o inv�lida, tente novamente.")
         mostarMenu()
      fimescolha

   ate (opcMenu = 5 ) ou (opcMenu2 = 5)


Fimalgoritmo
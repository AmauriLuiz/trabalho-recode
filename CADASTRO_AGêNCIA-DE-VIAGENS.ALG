Algoritmo "Cadastro_agência_de_Viagens"
//
//
// Professor   : Artur Brandt
// Descrição   : Criar Cadastro de uma agencia de viagens
// Autor(a)    : Amauri Luiz da silva
// Data atual  : 10/07/2022

Var


  // Seção de Declarações das variáveis

   nomeCliente: vetor[1..50] de caractere
   cpf: vetor [1..50] de caractere
   destino: vetor[1..50] de caractere
   nasc: vetor [1..50] de caractere
   op,buscaCliente, buscaDestino: caractere
   j,s,i: inteiro


procedimento inicializa()
inicio

   escreval(" --------------------------------------")
   escreval("            MENU DE CADASTRO           ")
   escreval(" ---------------------------------------")


   enquanto op<>"5" faca
      Escreval("--- Bem vindo a agência! ---")
      Escreval("")
      Escreval("[1] Cadastrar o novo cliente")
      Escreval("[2] Cadastrar o novo destino")
      Escreval("[3] Buscar cliente")
      Escreval("[4] Buscar destino")
      Escreval("[5] SAIR")
      Escreval("Digite a opção desejada: ")
      leia(op)
      se op="1" entao
         limpatela
         cadastroCliente()
      fimse
      se op="2" entao
         limpatela
         cadastroDest()
      fimse
      se op="3" entao
         limpatela
         buscarCliente()
      fimse
      se op="4" entao
         limpatela
         buscarDest()
      fimse
      se op="5" entao
         para i de 1 ate 2 faca
            nomeCliente[i]<-"x"
         fimpara
         limpatela
         Escreval("Até logo!")
      fimse
   fimenquanto
fimprocedimento


procedimento cadastroCliente()
inicio
   para i de 1 ate 4 faca
      se (nomeCliente[i]="") entao
         Escreva("Nome: ")
         leia(nomeCliente[i])
         Escreva("Data de nascimento: ")
         leia(nasc[i])
         Escreva("CPF: ")
         leia(cpf[i])
         voltar_menu()
         s<-s+1
         limpatela
      fimse
   fimpara
fimprocedimento


procedimento cadastroDest()
inicio
   para i de 1 ate 4 faca
      se (destino[i]="") entao
         Escreva("Destino desejado: ")
         leia(destino[i])
         voltar_menu3()
         s<-s+1
         limpatela
      fimse
   fimpara
fimprocedimento


procedimento voltar_menu()
inicio
   escreva("Retornar ao menu principal? [S/N]?")
   leia(op)
   se op="S" entao
      i<-i+1
      limpatela
      inicializa()
   senao
      Limpatela
      cadastroCliente()
   fimse
fimprocedimento


procedimento voltar_menu3()
inicio
escreva("Retornar ao menu principal? [S/N]")
leia(op)
se op="S" entao
   i<-i+1
   limpatela
   inicializa()
senao
   limpatela
   cadastroDest()
fimse
fimprocedimento


procedimento buscarCliente()
inicio
   j<-0
   Escreva("Digite o nome do cliente: ")
   leia(buscaCliente)
   para i de 1 ate 4 faca
      se buscaCliente=nomeCliente[i] entao
         Escreval("Nome:",nomeCliente[i])
         Escreval("Data de nascimento:", nasc[i])
         Escreval("CPF:",cpf[i])
         j<-j+1
      fimse
   fimpara
   se j=0 entao
      Escreval("Cliente não localizado!")
   fimse
   voltar_menu2()
   limpatela
fimprocedimento



procedimento buscarDest()
inicio
   j<-0
   Escreva("Digite o nome do destino: ")
   leia(buscaDestino)
   para i de 1 ate 4 faca
      se buscaDestino=destino[i] entao
         Escreval("Destino localizado:",destino[i])
         j<-j+1
      fimse
   fimpara
   se j=0 entao
      Escreval("Destino não localizado!")
   fimse
   inicializa()
   limpatela
fimprocedimento



procedimento voltar_menu2()
inicio
   Escreva("Retornar ao menu principal? [S/N]?")
   leia(op)
   se op="S" entao
      limpatela
      inicializa()
   senao
      limpatela
      buscarCliente()
   fimse
fimprocedimento






INICIO
   inicializa()


Fimalgoritmo
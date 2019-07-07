#include 'protheus.ch'
#include 'parmtype.ch'

Static cStat := '' //Acessivel em todo o fonte

user function ESCOPO1()

	//Variáveis Locais
	Local nVar0 := 1
	Local nVar1 := 20

	//Variáveis Private
	Private cPri := 'Private' //Podeser usada em todo o fonte

	//Variaveis Public
	Public __cPublic := 'RCTI' //Variáveis publicas sempre devem ser iniciadas com __ para não confundir com variáveis de sistema

	TestEscop(nVar0, @nVar1) //@nVar1 - Variável por referência

return

//Criando uma STATIC FUNCTION
Static Function TestEscop(nValor1, nValor2)

	Local __cPublic := 'Alterei'
	Default nValor1 := 0

	//Alterando o conteúdo da Variável
	nValor2 := 10
	
	//Mostra conteúdo da Variável Private
	ALERT("Private: " + cPri)
	
	//Alterar valor da variável Publica
	ALERT("Publica: " + __cPublic)

	MsgAlert(nValor2)
	ALERT("Variavel Statica: " + cStat)

return
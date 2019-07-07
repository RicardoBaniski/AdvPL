#include 'protheus.ch'
#include 'parmtype.ch'

Static cStat := '' //Acessivel em todo o fonte

user function ESCOPO1()

	//Vari�veis Locais
	Local nVar0 := 1
	Local nVar1 := 20

	//Vari�veis Private
	Private cPri := 'Private' //Podeser usada em todo o fonte

	//Variaveis Public
	Public __cPublic := 'RCTI' //Vari�veis publicas sempre devem ser iniciadas com __ para n�o confundir com vari�veis de sistema

	TestEscop(nVar0, @nVar1) //@nVar1 - Vari�vel por refer�ncia

return

//Criando uma STATIC FUNCTION
Static Function TestEscop(nValor1, nValor2)

	Local __cPublic := 'Alterei'
	Default nValor1 := 0

	//Alterando o conte�do da Vari�vel
	nValor2 := 10
	
	//Mostra conte�do da Vari�vel Private
	ALERT("Private: " + cPri)
	
	//Alterar valor da vari�vel Publica
	ALERT("Publica: " + __cPublic)

	MsgAlert(nValor2)
	ALERT("Variavel Statica: " + cStat)

return
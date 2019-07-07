#include 'protheus.ch'
#include 'parmtype.ch'

user function VARIAVEL()
	Local nNum := 66
	Local lLogic := .t.
	Local cCarac := "String"
	Local dData := Date()
	Local aArray := {"Joao","Maria","Jose"}
	Local bBloco := {|| nValor := 2, MsgAlert("O número é: " + cValToChar(nValor))}

	ALERT(nNum)
	ALERT(lLogic)
	ALERT(cValToChar(cCarac)) //Sempre que for imprimir na tela u8m caracter, utilizar o cValTpChar()
	ALERT(dData)
	ALERT(aArray[1])
	Eval(bBloco) // Sempre utilizar o Eval() para chamar um Bloco de código
return
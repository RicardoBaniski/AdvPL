#include 'protheus.ch'
#include 'parmtype.ch'

user function EWHILE()
	/*
	Local nNum1 := 0
	Local nNum2 := 10

	while(nNum1 < nNum2)
	nNum1++
	EndDo
	ALERT(nNum1 + nNum2) // 20
	*/

	Local nNum1 := 1
	Local cNome := 'RCTI'

	while(nNum1 != 10 .and. cNome != 'PROTHEUS' )
		nNum1++
		if(nNum1 == 5)
			cNome := 'PROTHEUS'
		endIf

	EndDo
	ALERT('Numero: '+cValToChar(nNum1))
	ALERT('Nome: '+cValToChar(cNome))

return
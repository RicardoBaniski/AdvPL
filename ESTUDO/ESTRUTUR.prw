#include 'protheus.ch'
#include 'parmtype.ch'

user function ESTRUTUR()

	Local nNum1 := 22
	Local nNum2 := 100

	If(nNum1 = nNum2) // Igual
		MsgInfo('A Vari�vel nNum1 � igual a nNum2')
	else
		MsgInfo('A Vari�vel � diferente de nNum2')
		If(nNum1 < nNum2)
			alert('A Vari�vel nNum1 � menor que nNum2')
		else
			alert('A vari�vel nNUm1 � diferente de nNum2')
		endIf
	endif

return
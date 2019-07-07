#include 'protheus.ch'
#include 'parmtype.ch'

user function ESTRUTUR()

	Local nNum1 := 22
	Local nNum2 := 100

	If(nNum1 = nNum2) // Igual
		MsgInfo('A Variável nNum1 é igual a nNum2')
	else
		MsgInfo('A Variável é diferente de nNum2')
		If(nNum1 < nNum2)
			alert('A Variável nNum1 é menor que nNum2')
		else
			alert('A variável nNUm1 é diferente de nNum2')
		endIf
	endif

return
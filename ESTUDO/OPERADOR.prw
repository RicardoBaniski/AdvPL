#include 'protheus.ch'
#include 'parmtype.ch'

user function OPERADOR()

	Local nNum1 := 10
	Local nNum2 := 20
	
	ALERT(nNum1 + nNum2) // 30
	ALERT(nNum2 - nNum1) // 10
	ALERT(nNum1 * nNum2) // 200
	ALERT(nNum2 / nNum1) // 2
	ALERT(nNum2 % nNum1) // 0
	
return
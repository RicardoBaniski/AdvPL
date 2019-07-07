#include 'protheus.ch'
#include 'parmtype.ch'

user function ATRIBUICAO()

	Local nNum1 := 10
	Local nNum2 := 20

	//Operadores de atribuição
	ALERT(nNum1 := 10)		// 10
	ALERT(nNum1 += nNum2) 	// 30
	ALERT(nNum2 -= nNum1)	// -10
	ALERT(nNum1 *= nNum2)	// -300
	ALERT(nNum2 /= nNum1)	// 0,03333...

return
#include 'protheus.ch'
#include 'parmtype.ch'

user function ESTRREP()

	Local nCount
	Local nNum := 0

	for nCount := 0 to 10 step 2 // inicia em 0 até 10 com intervalo de 2

		nNum += nCount

	next

	ALERT('Valor: ' + cValToChar(nNum)) // 30

return
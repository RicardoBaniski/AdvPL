#include 'protheus.ch'
#include 'parmtype.ch'

user function RELAC()

	Local nNum1 := 10
	Local nNum2 := 20
	
	//Operadores Relacionais
	ALERT(nNum1 < nNum2) 	// TRUE  / .T.
	ALERT(nNum1 > nNum2) 	// FALSE / .F.
	ALERT(nNum1 == nNum2)	// FALSE / .F.
	ALERT(nNum1 <= nNum2)	// TRUE  / .T.
	ALERT(nNum1 >= nNum2)	// FALSE / .F.
	ALERT(nNum1 <> nNum2)	// TRUE	 / .T.
	
return
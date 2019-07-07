#include 'protheus.ch'
#include 'parmtype.ch'

user function AVETOR()

	Local dData := date()
	Local aValores := {'Joao',dData,100}
	
	ALERT(aValores[2]) // data de hoje
	ALERT(aValores[3]) // 100

return
#include 'protheus.ch'
#include 'parmtype.ch'

user function DOCASE()

	Local cData := '25/12/2019'

	Do Case
		Case (cData == '20/12/2019')
		ALERT('N�o � Natal ' + cData)
		Case (cData == '25/12/2019')
		ALERT('� Natal ' + cData)
	EndCase

return
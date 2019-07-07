#include 'protheus.ch'
#include 'parmtype.ch'

user function DOCASE()

	Local cData := '22/12/2019'

	Do Case

		Case (cData == '20/12/2019')
		ALERT('Não é Natal ' + cData)

		Case (cData == '25/12/2019')
		ALERT('É Natal!!!')

		Otherwise
		MsgAlert('Não sei qual dia é hoje!')

	EndCase

return
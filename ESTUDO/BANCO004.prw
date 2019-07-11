#include 'protheus.ch'
#include 'parmtype.ch'

user function BANCO004()

	Local aArea := SB1->(GetArea())

	DbSelectArea('SB1')
	SB1->(dbSetOrder(1))
	SB1->(dbGoTop())

	Begin Transaction	// Iniciar Transação.

		MsgInfo("A descrição do produto será alterada!","Atenção")

		If SB1->(dbSeek(FWxFilial('SB1')+'12.0009'))
		
			RecLock('SB1',.F.) // Trava registro para alteração
			Replace B1_DESC With "COLA"
			SB1->(MsUnLock())
			
		EndIf
		
		MsgAlert("Alteração efetuada!","Atenção")

	End Transaction
	
	RestArea(aArea)

return
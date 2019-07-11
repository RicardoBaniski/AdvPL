#include 'protheus.ch'
#include 'parmtype.ch'

user function BANCO004()

	Local aArea := SB1->(GetArea())

	DbSelectArea('SB1')
	SB1->(dbSetOrder(1))
	SB1->(dbGoTop())

	Begin Transaction	// Iniciar Transa��o.

		MsgInfo("A descri��o do produto ser� alterada!","Aten��o")

		If SB1->(dbSeek(FWxFilial('SB1')+'12.0009'))
		
			RecLock('SB1',.F.) // Trava registro para altera��o
			Replace B1_DESC With "COLA"
			SB1->(MsUnLock())
			
		EndIf
		
		MsgAlert("Altera��o efetuada!","Aten��o")

	End Transaction
	
	RestArea(aArea)

return
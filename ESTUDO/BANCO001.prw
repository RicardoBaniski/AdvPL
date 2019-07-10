#include 'protheus.ch'
#include 'parmtype.ch'

user function BANCO001()

	Local aArea := SB1->(GetArea())

	DbSelectArea("SB1")
	SB1->(dbSetOrder(1)) // Posiciona no indice 1
	SB1->(dbGoTop())

	// Posiciona o produto de código 2010823-2
	if SB1->(dbSeek(FWXFILIAL("SB1") + "2010823-2"))
		Alert(SB1->B1_DESC)
	endIf

	RestArea(aArea) // Fechada a Area da tabela 

return
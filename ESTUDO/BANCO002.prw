#include 'protheus.ch'
#include 'parmtype.ch'

user function BANCO002()

	Local aArea := SB1->(GetArea())
	Local cMsg := ''

	DbSelectArea('SB1') 	// Seleciona a Area
	SB1->(dbSetOrder(1))	// Seleciona o Indice
	SB1->(dbGoTop())		// Posiciona no Topo

	cMsg := Posicione(	'SB1',; 						// Alias
						1,;								// Indice
						FWXFilial('SB') + '2010823-2',;	// Campos do Indice
						'B1_DESC')						// Campos de retorno
	
	Alert('Descrição do Produto: ' + cMsg, 'AVISO')
	
	RestArea(aArea)

return
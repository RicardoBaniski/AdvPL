#include 'protheus.ch'
#include 'parmtype.ch'
#include 'Topconn.ch'

user function BANCO003()

	Local aArea := SB1->(GetArea())
	Local cQuery := ''
	Local aDados := {} 				// Cria um array vazio

	cQuery := " SELECT "
	cQuery += " B1_COD AS CODIGO, "
	cQuery += " B1_DESC AS DESCRICAO "
	cQuery += " FROM "
	cQuery += " " + RETSQLNAME("SB1") + " SB1 "
	cQuery += " WHERE D_E_L_E_T_ = '' "
	cQuery += " AND B1_GRUPO = '0007' "

	TCQuery cQuery New Alias "TMP" 	// Executa a consulta acima

	while !TMP->(Eof()) 			// Enquanto não chegar ao final do arquivo
		AADD(aDados,TMP->CODIGO)	// Adiciona o CODIGO no Array
		AADD(aDados,TMP->DESCRICAO)	// Adiciona a DESCRICAO no Array
		TMP->(dbSkip())				// Sai da Tabela TMP
	EndDo

	Alert(Len(aDados))				// Exibe a quantidade de oitens no Array

	for nCount := 1 to Len(aDados) 	// Percorre o Array
		MsgInfo(aDados[nCount])		// Mostra cada intem percorrido do Array
	next nCount

	TMP->(dbCloseArea()) 	// Fecha a Area
	RestArea(aArea)			// Fecha Tabela

return
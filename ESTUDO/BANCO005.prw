#include 'protheus.ch'
#include 'parmtype.ch'

user function BANCO005()

	Local aArea := SB1->(GetArea())
	Local aDados := {}
	Private lMSErroAuto := .F.

	//ADICIONANDO DADOS NO VETOR PARA TES DE INCLUS�O NA TABELA SB1
	aDados := {	{"B1_COD"		,"9999999999999",Nil},;
				{"B1_DESC"		,"PRODUTO TESTE",Nil},;
				{"B1_TIPO"		,"GG"			,Nil},;
				{"B1_UM"		,"PC"			,Nil},;
				{"B1_LOCPAD"	,"01"			,Nil},;
				{"B1_PICM"		,0				,Nil},;
				{"B1_IPI"		,0				,Nil},;
				{"B1_CONTRAT"	,"N"			,Nil},;
				{"B1_LOCALIZ"	,"N"			,Nil}}

	Begin Transaction //INICIO DO CONTROLE DE TRANSA��O

		/* CHAMA O CADASTRO DE PRODUTO */
		MSExecAuto({|x,y|Mata010(x,y)},aDados,3) // 3 = Opera��o de inclus�o

		If lMsErroAuto // Caso ocorra algum erro
			Alert("Ocorreram erros durante a opera��o!")
			MostraErro()

			Disarmtransaction()
		Else
			MsgInfo("Opera��o finalizada!","Aviso")
		EndIf

	End Transaction

	RestArea(aArea)

return
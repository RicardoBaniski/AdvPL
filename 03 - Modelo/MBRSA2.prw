﻿#include 'protheus.ch'
#include 'parmtype.ch'

/*/{Protheus.doc} MBRSA2
//TODO Descrição auto-gerada.
@author RCTI TREINAMENTOS
@since 2018
@version undefined

@type function
/*/
user function MBRSA2()
	Local cAlias 		:= "SA2"
	Local aCores 		:= {}
	Local cFiltra 		:= "A2_FILIAL == '"+xFilial('SA2')+"' .And. A2_EST == 'SP'"
	Private cCadastro 	:= "Cadastro  MBROWSE"
	Private aRotina 	:= {}
	Private aIndexSA2 	:= {}
	Private bFiltraBrw := {|| FilBrowse(cAlias,@aIndexSA2,@cFiltra)} //Filbrowse
	 
	
	AADD(aRotina,{"Pesquisar" 	,"AxPesqui" 	,0,1})
	AADD(aRotina,{"Visualizar" 	,"AxVisual" 	,0,2})
	AADD(aRotina,{"Incluir" 	,"U_BInclui" 	,0,3})
	AADD(aRotina,{"Alterar" 	,"U_BAltera" 	,0,4})
	AADD(aRotina,{"Excluir" 	,"U_BDeleta" 	,0,5})
	AADD(aRotina,{"Legenda" 	,"U_BLegenda" 	,0,6})
	
	//Acores - Legenda
	
	AADD(aCores,{"A2_TIPO == 'F'" ,"BR_VERDE"   })
	AADD(aCores,{"A2_TIPO == 'J'" ,"BR_AMARELO" })
	AADD(aCores,{"A2_TIPO == 'X'" ,"BR_LARANJA" })
	AADD(aCores,{"A2_TIPO == 'R'" ,"BR_MARROM" 	})
	AADD(aCores,{"Empty(A2_TIPO)" ,"BR_PRETO" 	})
	

	dbSelectArea(cAlias)
	dbSetOrder(1)
	
	Eval(bFiltraBrw)
	
	dbGoTop()
	mBrowse(6,1,22,75,cAlias,,,,,,aCores)
	
	EndFilBrw(cAlias,aIndexSA2)
	
return
/*------------------------------------------
	Função BInclui - Inclusão
--------------------------------------------*/
User Function BInclui(cAlias,nReg,nOpc)
	Local nOpcao := 0
	nOpcao := AxInclui(cAlias,nReg,nOpc)
		If nOpcao == 1
			MsgInfo("Inclusão efetuada com sucesso!")
		Else
			MsgAlert("Inclusão Cancelada!")
		EndIf	
Return
/*---------------------------------------------
	Função BAltera - Alteração
-----------------------------------------------*/
User Function BAltera(cAlias,nReg,nOpc)
	Local nOpcao := 0
	nOpcao := AxAltera(cAlias,nReg,nOpc)
		If nOpcao == 1
			MsgInfo("Alteração efetuada com sucesso!")
		Else
			MsgAlert("Alteração Cancelada!")
		EndIf	
Return Nil
/*-------------------------------------
	Função BDeleta - Exclusão
---------------------------------------*/
User Function BDeleta(cAlias,nReg,nOpc)
	Local nOpcao := 0
	nOpcao := AxDeleta(cAlias,nReg,nOpc)
	If nOpcao == 1                                 
		MsgInfo("Exclusão cancelada!")           
	Else
		MsgAlert("Exclusão efetuada com sucesso!")
	Endif
Return Nil
/*---------------------------------
	Função BLegenda - Legenda
-----------------------------------*/
User Function BLegenda()
	Local aLegenda := {}
	
	AADD(aLegenda,{"BR_VERDE" ,"Pessoa Física"})
	AADD(aLegenda,{"BR_AMARELO" ,"Pessoa Jurídica" 	})
	AADD(aLegenda,{"BR_LARANJA" ,"Exportação" 		})
	AADD(aLegenda,{"BR_MARROM" 	,"Fornecedor Rural" })
	AADD(aLegenda,{"BR_PRETO" 	,"Não Classificado" })
	
	BrwLegenda(cCadastro, "Legenda",aLegenda)
	
Return





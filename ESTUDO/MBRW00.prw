#include 'protheus.ch'
#include 'parmtype.ch'

user function MBRW00()

	Local cAlias := "SB1"
	Private cCadastro := "Cadastro de Produtos MBROWSE"
	Private aRotina := {}

	AADD(aRotina,{"Pesquisa"	,"AxPesqui"		,0,1})
	AADD(aRotina,{"Visualizar"	,"AxVisual"		,0,2})
	AADD(aRotina,{"Incluir"		,"AxInclui"		,0,3})
	AADD(aRotina,{"Alterar"		,"AxAltera"		,0,4})
	AADD(aRotina,{"Excluir"		,"AxDeleta"		,0,5})
	AADD(aRotina,{"OlaMundo"	,"u_olamundo"	,0,6})

	DbSelectArea(cAlias)
	dbSetOrder(1)
	mBrowse(,,,,cAlias)
	//	mBrowse(6,1,22,75,cAlias)

return Nil
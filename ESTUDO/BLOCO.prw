#include 'protheus.ch'
#include 'parmtype.ch'

user function BLOCO()

	//	Local bBloco := {||ALERT('Olá Mundo!!!')}
	//	eval(bBloco)

	// Passagem por parametro
	Local bBloco := {|cMsg| ALERT(cMsg)}
	eval(bBloco,"Olá mundo!!!")

return
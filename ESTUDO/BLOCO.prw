#include 'protheus.ch'
#include 'parmtype.ch'

user function BLOCO()

	//	Local bBloco := {||ALERT('Ol� Mundo!!!')}
	//	eval(bBloco)

	// Passagem por parametro
	Local bBloco := {|cMsg| ALERT(cMsg)}
	eval(bBloco,"Ol� mundo!!!")

return
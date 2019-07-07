#include 'protheus.ch'
#include 'parmtype.ch'

user function AVETOR2()

	Local aVetor := {10,20,30}
	/*
	ains(aVetor,2) //Permite a inserção de um elemento em qualquer posição do ARRAY
	ALERT(aVetor[2])

	aVetor[2] := 200
	ALERT(aVetor[2])

	ALERT(Len(aVetor))
	*/
	/*
	aVetor2 := aclone(aVetor) // Realiza uma cópia de uma ARRAY para outro
	for nCount := 1 to len (aVetor2)
	ALERT(aVetor2[nCount])
	next nCount
	*/
	/*
	adel(aVetor,2) // Permite a exclusão de um elemento do ARRAY, deixando seu lugar vazio
	ALERT(aVetor[3])
	alert(Len(aVetor))
	*/
	asize(aVetor,2) // Define o tamanho o ARRAY
	ALERT(Len(aVetor))
return
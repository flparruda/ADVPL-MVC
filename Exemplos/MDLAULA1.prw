#Include "Totvs.ch"
#Include "FwMvcDef.ch"




/*
�����������������������������������������������������������������������������
�����������������������������������������������������������������������������
�������������������������������������������������������������������������ͻ��
���Programa  �NOVO3     �Autor  �Microsiga           � Data �  05/30/12   ���
�������������������������������������������������������������������������͹��
���Desc.     �                                                            ���
���          �                                                            ���
�������������������������������������������������������������������������͹��
���Uso       � AP                                                        ���
�������������������������������������������������������������������������ͼ��
�����������������������������������������������������������������������������
�����������������������������������������������������������������������������
*/
//
Static Function PEMVC()
Local aParam	:=	PARAMIXB
Local oObj		:=	aParam[1]     // OBJETO
Local cIdPonto	:=	aParam[2]     // ID DO PONTO DE ENTRADA
Local cIdObj	:=	oObj:GetId()
Local cClasse   :=  oObj:ClassName()
Local nQtdLinhas:= 	0
Local nLinha    := 	0
Local xRet		:=	Nil

If cClasse	==	"FWFORMGRID"
	nQtdLinhas := oObj:GetQtdLine()
	nLinha     := oObj:nLine
EndIf

Do Case
	Case	cIdPonto	==	"MODELPRE"
		cMsg	:=	'Antes da altera��o de qualquer campo do modelo. (requer retorno l�gico)'+CRLF
		cMsg	+=	'ID: '+cIdObj
		MsgInfo(cMsg,cIdPonto)
		xRet	:=	MsgYesNo('Deseja Continuar','Aten��o')
		
	Case	cIdPonto	==	"MODELPOS"
		cMsg	:=	'Na valida��o total do modelo (requer retorno l�gico)'+CRLF
		cMsg	+=	'ID: '+cIdObj+CRLF
		MsgInfo(cMsg,cIdPonto)
		xRet	:=	MsgYesNo('Deseja Continuar','Aten��o')
		
	Case	cIdPonto	==	"FORMPRE"
		cMsg	:=	'Antes da altera��o de qualquer campo do formul�rio. (requer retorno l�gico)'+CRLF
		cMsg	+=	'ID: '+cIdObj+CRLF
		
		If      cClasse == 'FWFORMGRID'
			cMsg += '� um FORMGRID com ' + Alltrim( Str( nQtdLinhas ) ) + ' linha(s).' + CRLF
			cMsg += 'Posicionado na linha ' + Alltrim( Str( nLinha     ) ) + CRLF
		ElseIf cClasse == 'FWFORMFIELD'
			cMsg += '� um FORMFIELD' + CRLF
		EndIf
		
		MsgInfo(cMsg,cIdPonto)
		xRet	:=	MsgYesNo('Deseja Continuar','Aten��o')
		
	Case	cIdPonto	==	"FORMPOS"
		cMsg	:=	'Na valida��o total do formul�rio (requer retorno l�gico)'+CRLF
		cMsg	+=	'ID: '+cIdObj+CRLF
		
		If      cClasse == 'FWFORMGRID'
			cMsg += '� um FORMGRID com ' + Alltrim( Str( nQtdLinhas ) ) + ' linha(s).' + CRLF
			cMsg += 'Posicionado na linha ' + Alltrim( Str( nLinha     ) ) + CRLF
		ElseIf cClasse == 'FWFORMFIELD'
			cMsg += '� um FORMFIELD' + CRLF
		EndIf
		
		MsgInfo(cMsg,cIdPonto)
		xRet	:=	MsgYesNo('Deseja Continuar','Aten��o')
		
	Case	cIdPonto	==	"FORMLINEPRE"
		cMsg	:=	'Antes da altera��o da linha do formul�rio GRID. (requer retorno l�gico)'+CRLF
		cMsg	+=	'ID: '+cIdObj +CRLF
		cMsg	+=	'ACAO:  '+AllToChar(aParam[5])+CRLF
		cMsg	+=	'LINHA: '+cValToChar(aParam[4])+CRLF
		
		MsgInfo(cMsg,cIdPonto)
		xRet	:=	MsgYesNo('Deseja Continuar','Aten��o')
		
	Case	cIdPonto	==	"FORMLINEPOS"
		cMsg	:=	'Na valida��o total da linha do formul�rio GRID. (requer retorno l�gico)'+CRLF
		cMsg	+=	'ID: '+cIdObj+CRLF
		cMsg	+=	'ACAO:  '+AllToChar(aParam[5])+CRLF
		cMsg	+=	'LINHA: '+cValToChar(aParam[4])+CRLF
		MsgInfo(cMsg,cIdPonto)
		xRet	:=	MsgYesNo('Deseja Continuar','Aten��o')
		
	Case	cIdPonto	==	"MODELCOMMITTTS"
		cMsg	:=	'Apos a grava��o total do modelo e dentro da transa��o'+CRLF
		cMsg	+=	'ID: '+cIdObj
		MsgInfo(cMsg,cIdPonto)
		
	Case	cIdPonto	==	"MODELCOMMITNTTS"
		cMsg	:=	'Apos a grava��o total do modelo e fora da transa��o'+CRLF
		cMsg	+=	'ID: '+cIdObj
		MsgInfo(cMsg,cIdPonto)
		xRet	:=	MsgYesNo('Deseja Continuar','Aten��o')
		
	Case	cIdPonto	==	"FORMCOMMITTTSPRE"
		cMsg	:=	'Antes da grava��o da tabela do formul�rio'+CRLF
		cMsg	+=	'ID: '+cIdObj
		MsgInfo(cMsg,cIdPonto)
		xRet	:=	MsgYesNo('Deseja Continuar','Aten��o')
		
	Case	cIdPonto	==	"FORMCOMMITTTSPOS"
		cMsg	:=	'Apos a grava��o da tabela do formul�rio'+CRLF
		cMsg	+=	'ID: '+cIdObj
		MsgInfo(cMsg,cIdPonto)
		
	Case	cIdPonto	==	"MODELVLDACTIVE"
		cMsg	:=	'Na ativa��o do modelo.'+CRLF
		cMsg	+=	'ID: '+cIdObj
		MsgInfo(cMsg,cIdPonto)
		xRet	:=	MsgYesNo('Deseja Continuar','Aten��o')
		
	Case	cIdPonto	==	"MODELCANCEL"
		cMsg	:=	'No cancelamento do bot�o.(Modelo) (Retorno Logico)'+CRLF
		cMsg	+=	'ID: '+cIdObj
		MsgInfo(cMsg,cIdPonto)
		xRet	:=	MsgYesNo('Deseja Continuar','Aten��o')
		
	Case	cIdPonto	==	"FORMCANCEL"
		cMsg	:=	'No cancelamento do bot�o (Formulario) (Retorno Logico).'+CRLF
		cMsg	+=	'ID: '+cIdObj
		MsgInfo(cMsg,cIdPonto)
		xRet	:=	MsgYesNo('Deseja Continuar','Aten��o')
		
	Case	cIdPonto	==	"BUTTONBAR"
		cMsg	:=	'Para acrescentar botoes a ControlBar'+CRLF
		cMsg	+=	'ID: '+cIdObj
		MsgInfo(cMsg,cIdPonto)
		xRet := { {'Salvar', 'SALVAR', { || Alert( 'Salvou' ) }, 'Este botao Salva' } }
EndCase



Return xRet




/*

*/

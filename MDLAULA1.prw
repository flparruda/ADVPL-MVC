#Include "Totvs.ch"
#Include "FwMvcDef.ch"




/*
ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัออออออออออออออออออออหออออออัอออออออออออออปฑฑ
ฑฑบPrograma  ณNOVO3     บAutor  ณMicrosiga           บ Data ณ  05/30/12   บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯออออออออออออออออออออสออออออฯอออออออออออออนฑฑ
ฑฑบDesc.     ณ                                                            บฑฑ
ฑฑบ          ณ                                                            บฑฑ
ฑฑฬออออออออออุออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออนฑฑ
ฑฑบUso       ณ AP                                                        บฑฑ
ฑฑศออออออออออฯออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿
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
		cMsg	:=	'Antes da altera็ใo de qualquer campo do modelo. (requer retorno l๓gico)'+CRLF
		cMsg	+=	'ID: '+cIdObj
		MsgInfo(cMsg,cIdPonto)
		xRet	:=	MsgYesNo('Deseja Continuar','Aten็ใo')
		
	Case	cIdPonto	==	"MODELPOS"
		cMsg	:=	'Na valida็ใo total do modelo (requer retorno l๓gico)'+CRLF
		cMsg	+=	'ID: '+cIdObj+CRLF
		MsgInfo(cMsg,cIdPonto)
		xRet	:=	MsgYesNo('Deseja Continuar','Aten็ใo')
		
	Case	cIdPonto	==	"FORMPRE"
		cMsg	:=	'Antes da altera็ใo de qualquer campo do formulแrio. (requer retorno l๓gico)'+CRLF
		cMsg	+=	'ID: '+cIdObj+CRLF
		
		If      cClasse == 'FWFORMGRID'
			cMsg += 'ษ um FORMGRID com ' + Alltrim( Str( nQtdLinhas ) ) + ' linha(s).' + CRLF
			cMsg += 'Posicionado na linha ' + Alltrim( Str( nLinha     ) ) + CRLF
		ElseIf cClasse == 'FWFORMFIELD'
			cMsg += 'ษ um FORMFIELD' + CRLF
		EndIf
		
		MsgInfo(cMsg,cIdPonto)
		xRet	:=	MsgYesNo('Deseja Continuar','Aten็ใo')
		
	Case	cIdPonto	==	"FORMPOS"
		cMsg	:=	'Na valida็ใo total do formulแrio (requer retorno l๓gico)'+CRLF
		cMsg	+=	'ID: '+cIdObj+CRLF
		
		If      cClasse == 'FWFORMGRID'
			cMsg += 'ษ um FORMGRID com ' + Alltrim( Str( nQtdLinhas ) ) + ' linha(s).' + CRLF
			cMsg += 'Posicionado na linha ' + Alltrim( Str( nLinha     ) ) + CRLF
		ElseIf cClasse == 'FWFORMFIELD'
			cMsg += 'ษ um FORMFIELD' + CRLF
		EndIf
		
		MsgInfo(cMsg,cIdPonto)
		xRet	:=	MsgYesNo('Deseja Continuar','Aten็ใo')
		
	Case	cIdPonto	==	"FORMLINEPRE"
		cMsg	:=	'Antes da altera็ใo da linha do formulแrio GRID. (requer retorno l๓gico)'+CRLF
		cMsg	+=	'ID: '+cIdObj +CRLF
		cMsg	+=	'ACAO:  '+AllToChar(aParam[5])+CRLF
		cMsg	+=	'LINHA: '+cValToChar(aParam[4])+CRLF
		
		MsgInfo(cMsg,cIdPonto)
		xRet	:=	MsgYesNo('Deseja Continuar','Aten็ใo')
		
	Case	cIdPonto	==	"FORMLINEPOS"
		cMsg	:=	'Na valida็ใo total da linha do formulแrio GRID. (requer retorno l๓gico)'+CRLF
		cMsg	+=	'ID: '+cIdObj+CRLF
		cMsg	+=	'ACAO:  '+AllToChar(aParam[5])+CRLF
		cMsg	+=	'LINHA: '+cValToChar(aParam[4])+CRLF
		MsgInfo(cMsg,cIdPonto)
		xRet	:=	MsgYesNo('Deseja Continuar','Aten็ใo')
		
	Case	cIdPonto	==	"MODELCOMMITTTS"
		cMsg	:=	'Apos a grava็ใo total do modelo e dentro da transa็ใo'+CRLF
		cMsg	+=	'ID: '+cIdObj
		MsgInfo(cMsg,cIdPonto)
		
	Case	cIdPonto	==	"MODELCOMMITNTTS"
		cMsg	:=	'Apos a grava็ใo total do modelo e fora da transa็ใo'+CRLF
		cMsg	+=	'ID: '+cIdObj
		MsgInfo(cMsg,cIdPonto)
		xRet	:=	MsgYesNo('Deseja Continuar','Aten็ใo')
		
	Case	cIdPonto	==	"FORMCOMMITTTSPRE"
		cMsg	:=	'Antes da grava็ใo da tabela do formulแrio'+CRLF
		cMsg	+=	'ID: '+cIdObj
		MsgInfo(cMsg,cIdPonto)
		xRet	:=	MsgYesNo('Deseja Continuar','Aten็ใo')
		
	Case	cIdPonto	==	"FORMCOMMITTTSPOS"
		cMsg	:=	'Apos a grava็ใo da tabela do formulแrio'+CRLF
		cMsg	+=	'ID: '+cIdObj
		MsgInfo(cMsg,cIdPonto)
		
	Case	cIdPonto	==	"MODELVLDACTIVE"
		cMsg	:=	'Na ativa็ใo do modelo.'+CRLF
		cMsg	+=	'ID: '+cIdObj
		MsgInfo(cMsg,cIdPonto)
		xRet	:=	MsgYesNo('Deseja Continuar','Aten็ใo')
		
	Case	cIdPonto	==	"MODELCANCEL"
		cMsg	:=	'No cancelamento do botใo.(Modelo) (Retorno Logico)'+CRLF
		cMsg	+=	'ID: '+cIdObj
		MsgInfo(cMsg,cIdPonto)
		xRet	:=	MsgYesNo('Deseja Continuar','Aten็ใo')
		
	Case	cIdPonto	==	"FORMCANCEL"
		cMsg	:=	'No cancelamento do botใo (Formulario) (Retorno Logico).'+CRLF
		cMsg	+=	'ID: '+cIdObj
		MsgInfo(cMsg,cIdPonto)
		xRet	:=	MsgYesNo('Deseja Continuar','Aten็ใo')
		
	Case	cIdPonto	==	"BUTTONBAR"
		cMsg	:=	'Para acrescentar botoes a ControlBar'+CRLF
		cMsg	+=	'ID: '+cIdObj
		MsgInfo(cMsg,cIdPonto)
		xRet := { {'Salvar', 'SALVAR', { || Alert( 'Salvou' ) }, 'Este botao Salva' } }
EndCase



Return xRet




/*

*/

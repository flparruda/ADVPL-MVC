#Include "Totvs.ch"
#Include "FwMvcDef.ch"


/*
�����������������������������������������������������������������������������
�����������������������������������������������������������������������������
�������������������������������������������������������������������������ͻ��
���Programa  �MVCAULA4  �Autor  �FABRICA ADVPL        � Data �  05/27/12   ���
�������������������������������������������������������������������������͹��
���Desc.     �Programa exemplo da utiliza��o das classes de MVC           ���
���          �Estrutura Browse com coluna de marca��o                     ���
�������������������������������������������������������������������������͹��
���Uso       � Aula de MVC                                                ���
�������������������������������������������������������������������������ͼ��
�����������������������������������������������������������������������������
�����������������������������������������������������������������������������
*/
User Function MVCAULA4()
Local	bAfterMark	:=	{|| Alert(oMarK:CanMark(oMark:Mark()))}
Private cCadastro       := "TESTE TITULO"
Private oMark :=	FwMarkBrowse():New()

//Define a Tabela sobre qual o Markbrowse ser� executado
oMark:SetAlias('ZA0')
//Define o Campo de Marca��o (Caracter de 2)
oMark:SetFieldMark('ZA0_OK')
//Define a Descri��o do MarkBrowse
oMark:SetDescription('Selecione os Autores/Interprestes para execu��o da Rotina')
//Adiciona as Legendas no MarkBrowse
oMark:AddLegend('ZA0_TIPO == "C"', 'YELLOW', 'Autor'     )
oMark:AddLegend('ZA0_TIPO == "I"', 'BLUE'  , 'Interprete')

//Bloco de Codigo para marcar todos
oMark:SetAfterMark(bAfterMark)
//Define o Filtro Padr�o 
oMark:SetFilterDefault('ZA0_TIPO == "C"')
//Ativa o MarkBrowse
oMark:Activate()


Return




Static Function MenuDef()
Local aMenu	:=	{}

Add Option aMenu Title 'Pesquisar'  Action 'PesqBrw' 	     		Operation 1 Access 0
Add Option aMenu Title 'Visualizar' Action 'AxVisual' 		Operation 2 Access 0
Add Option aMenu Title 'Processar'  Action 'U_MVC4PROC()' 			Operation 2 Access 0

Return aMenu



User Function MVC4PROC()
Local aArea	 :=	GetArea()
Local cMarca := oMark:Mark()
Local cTmp	 := GetNextAlias()
Local nQtd	 := 0

BeginSql Alias cTmp
	Select Count(*) QTD
	From %Table:ZA0%	ZA0
	Where ZA0.%NotDel%	And
		  ZA0.ZA0_OK	= %Exp:cMarca%
EndSql

MsgInfo('Foram marcados ' + cValToChar((cTmp)->QTD) + ' registro','Marcados')

(cTmp)->(dbCloseArea())

ZA0->(dbGoTop())

While !Eof()
	If oMark:IsMark(cMarca)
		nQtd++
	EndIf         	
	ZA0->(dbSkip())
End


MsgInfo('Foram marcados ' + cValToChar(nQtd) + ' registro','Marcados')

RestArea(aArea)

Return 



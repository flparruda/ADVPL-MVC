#Include "Totvs.ch"
#Include "FwMvcDef.ch"


/*
ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัออออออออออออออออออออหออออออัอออออออออออออปฑฑ
ฑฑบPrograma  ณMVCAULA6  บAutor  ณFabrica de Softwareบ Data ณ  05/27/12   บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯออออออออออออออออออออสออออออฯอออออออออออออนฑฑ
ฑฑบDesc.     ณPrograma exemplo da utiliza็ใo das classes de MVC           บฑฑ
ฑฑบ          ณEstrutura Pai e Filho                                       บฑฑ
ฑฑฬออออออออออุออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออนฑฑ
ฑฑบUso       ณ Aula de MVC                                                บฑฑ
ฑฑศออออออออออฯออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿
*/
User Function MVCAULA6()

Private oBrowse 	:= FwMBrowse():New()				//Variavel de Browse 

//Alias do Browse
oBrowse:SetAlias('ZA1')

//Descri็ใo da Parte Superior Esquerda do Browse
oBrowse:SetDescripton("Musicas/Autores") 

//Habilita os Bot๕es Ambiente e WalkThru
oBrowse:SetAmbiente(.T.)
oBrowse:SetWalkThru(.T.)

//Desabilita os Detalhes da parte inferior do Browse
//oBrowse:DisableDetails()


//Ativa o Browse
oBrowse:Activate()


Return

/*
ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัออออออออออออออออออออหออออออัอออออออออออออปฑฑ
ฑฑบPrograma  ณMVCAULA6  บAutor  ณFabrica de Softwareบ Data ณ  05/27/12   บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯออออออออออออออออออออสออออออฯอออออออออออออนฑฑ
ฑฑบDesc.     ณFuncao para Menu do Browse                                  บฑฑ
ฑฑบ          ณ                                                            บฑฑ
ฑฑฬออออออออออุออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออนฑฑ
ฑฑบUso       ณ Aula MVC                                                   บฑฑ
ฑฑศออออออออออฯออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿
*/

Static Function MenuDef()
Local aMenu :=	{}
	
	ADD OPTION aMenu TITLE 'Pesquisar'  ACTION 'PesqBrw'       		OPERATION 1 ACCESS 0
	ADD OPTION aMenu TITLE 'Visualizar' ACTION 'VIEWDEF.MVCAULA6'	OPERATION 2 ACCESS 0
	ADD OPTION aMenu TITLE 'Incluir'    ACTION 'VIEWDEF.MVCAULA6' 	OPERATION 3 ACCESS 0
	ADD OPTION aMenu TITLE 'Alterar'    ACTION 'VIEWDEF.MVCAULA6' 	OPERATION 4 ACCESS 0
	ADD OPTION aMenu TITLE 'Excluir'    ACTION 'VIEWDEF.MVCAULA6' 	OPERATION 5 ACCESS 0
	ADD OPTION aMenu TITLE 'Imprimir'   ACTION 'VIEWDEF.MVCAULA6'	OPERATION 8 ACCESS 0
	ADD OPTION aMenu TITLE 'Copiar'     ACTION 'VIEWDEF.MVCAULA6'	OPERATION 9 ACCESS 0
	
	
Return(aMenu)



/*
ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัออออออออออออออออออออหออออออัอออออออออออออปฑฑ
ฑฑบPrograma  ณMVCAULA6  บAutor  ณFabrica de Softwareบ Data ณ  05/27/12   บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯออออออออออออออออออออสออออออฯอออออออออออออนฑฑ
ฑฑบDesc.     ณFuncao de Modelo de Dados.                                  บฑฑ
ฑฑบ          ณOnde ้ definido a estrutura de dados                        บฑฑ
ฑฑบ          ณRegra de Negocio.                                           บฑฑ
ฑฑฬออออออออออุออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออนฑฑ
ฑฑบUso       ณ Aula de MVC                                                บฑฑ
ฑฑศออออออออออฯออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿
*/

Static Function ModelDef()
Local oStruct1	:=	DefStruModel('ZA1') //Retorna a Estrutura do Alias 
Local oStruct2	:=	DefStruModel('ZA2') //Retorna a Estrutura do Alias 
Local oModel

//Instancia do Objeto de Modelo de Dados
oModel	:=	MpFormModel():New('MDLAULA6',/*Pre-Validacao*/,;
{|oModel| MVCMODELPOS(oModel)},/*Commit*/,/*Commit*/,/*Cancel*/)

//Adiciona um modelo de Formulario de Cadastro Similar เ Enchoice ou Msmget
oModel:AddFields('ID_MODEL_FLD_MVCAULA6', /*cOwner*/, oStruct1, /*bPreValidacao*/, /*bPosValidacao*/, /*bCarga*/ )

//Adiciona um Modelo de Grid somilar เ MsNewGetDados, BrGetDb
oModel:AddGrid( 'ID_MODEL_GRD_MVCAULA6', 'ID_MODEL_FLD_MVCAULA6', oStruct2,;
 /*bLinePre*/, /*bLinePost*/, /*bPreVal*/, /*bPosVal*/, /*BLoad*/ )

// Faz relaciomaneto entre os compomentes do model
oModel:SetRelation( 'ID_MODEL_GRD_MVCAULA6',;
 { { 'ZA2_FILIAL', 'xFilial( "ZA2" )' }, { 'ZA2_MUSICA', 'ZA1_MUSICA' } },;
  'ZA2_FILIAL + ZA2_MUSICA' )

//Liga o controle de nใo repeti็ใo de Linha
oModel:GetModel( 'ID_MODEL_GRD_MVCAULA6' ):SetUniqueLine( { 'ZA2_AUTOR' } )

// Indica que ้ opcional ter dados informados na Grid
//oModel:GetModel( 'ID_GRD_MVCAULA6' ):SetOptional(.T.)

//Adiciona Descricao do Modelo de Dados
oModel:SetDescription( 'Modelo de Dados de Musicas' )

//Adiciona Descricao dos Componentes do Modelo de Dados
oModel:GetModel( 'ID_MODEL_FLD_MVCAULA6' ):SetDescription( 'Formulario de Cadastro das Musicas' )
oModel:GetModel( 'ID_MODEL_GRD_MVCAULA6' ):SetDescription( 'Grid  de Cadastro dos Dados dos Autores' )

Return(oModel)


/*
ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัออออออออออออออออออออหออออออัอออออออออออออปฑฑ
ฑฑบPrograma  ณMVCAULA6  บAutor  ณFabrica de Softwareบ Data ณ  05/27/12   บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯออออออออออออออออออออสออออออฯอออออออออออออนฑฑ
ฑฑบDesc.     ณFuncao de Visualizacao.                                     บฑฑ
ฑฑบ          ณOnde ้ definido a visualizacao da Regra de Negocio.         บฑฑ
ฑฑฬออออออออออุออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออนฑฑ
ฑฑบUso       ณ Aula de MVC                                                บฑฑ
ฑฑศออออออออออฯออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿
*/

Static Function ViewDef()
Local oStruct1	:=	DefStruView('ZA1') 	//Retorna a Estrutura do Alias
Local oStruct2	:=	DefStruView('ZA2') 	//Retorna a Estrutura do Alias
Local oModel	:=	FwLoadModel('MVCAULA6')	//Retorna o Objeto do Modelo de Dados 
Local oView		:=	FwFormView():New()      //Instancia do Objeto de Visualiza็ใo

//Define o Modelo sobre qual a Visualizacao sera utilizada
oView:SetModel(oModel)	

//Removendo Campos Manualmente
oStruct2:RemoveField('ZA2_MUSICA')

//Vincula o Objeto visual de Cadastro com o modelo 
oView:AddField( 'ID_VIEW_FLD_MVCAULA6', oStruct1, 'ID_MODEL_FLD_MVCAULA6')

//Adiciona no nosso View um controle do tipo FormGrid(antiga newgetdados)
oView:AddGrid(  'ID_VIEW_GRD_MVCAULA6', oStruct2, 'ID_MODEL_GRD_MVCAULA6')

//Define o Preenchimento da Janela
oView:CreateHorizontalBox( 'ID_HBOX_SUPERIOR', 15 )
oView:CreateHorizontalBox( 'ID_HBOX_INFERIOR', 85 )


// Relaciona o ID da View com o "box" para exibicao
oView:SetOwnerView( 'ID_VIEW_FLD_MVCAULA6', 'ID_HBOX_SUPERIOR' )
oView:SetOwnerView( 'ID_VIEW_GRD_MVCAULA6', 'ID_HBOX_INFERIOR' )


// Define campos que terao Auto Incremento
oView:AddIncrementField( 'ID_VIEW_GRD_MVCAULA6', 'ZA2_ITEM' )

Return(oView)


/*
ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัออออออออออออออออออออหออออออัอออออออออออออปฑฑ
ฑฑบPrograma  ณMVCAULA6  บAutor  ณMicrosiga           บ Data ณ  05/30/12   บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯออออออออออออออออออออสออออออฯอออออออออออออนฑฑ
ฑฑบDesc.     ณ                                                            บฑฑ
ฑฑบ          ณ                                                            บฑฑ
ฑฑฬออออออออออุออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออนฑฑ
ฑฑบUso       ณ AP                                                        บฑฑ
ฑฑศออออออออออฯออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿
*/
Static Function DefStruModel(cAlias)
Local aArea		:=	GetArea()
Local aAreaSX2	:=	SX2->(GetArea())
Local aAreaSX3	:=	SX3->(GetArea())
Local aAreaSX7	:=	SX7->(GetArea())
Local aAreaSIX	:=	SIX->(GetArea())
Local nOrdem	:=  0
Local cPrefCpo	:=	""
Local oStruct	:=	FWFormModelStruct():New()	//Estrutura do Modelo
Local cPreTrg	:=	""
Local cExecTrg	:=	""

//Tabela
SX2->(dbSetOrder(1))
SX2->(dbSeek(cAlias))

//oStruct:AddTable( cAlias			, aUniq							, cNome )
oStruct:AddTable( SX2->X2_CHAVE	, StrTokArr(SX2->X2_UNICO,'+') 	, SX2->X2_NOME )

//Indice
SIX->(dbSetOrder(1))
SIX->(dbSeek(cAlias))

nOrdem := 0

While !SIX->(Eof()) .And. SIX->INDICE == cAlias
	//oStruct:AddIndex( nOrdem, cID			, cChave		, cDescri	, cLookUp,
	// cNickName	, lShowPesq			  )
     oStruct:AddIndex( nOrdem++, SIX->ORDEM, SIX->CHAVE	, SIXDescricao(),;
      SIX->F3, SIX->NICKNAME, ( SIX->SHOWPESQ <> 'N' )) 
     
     SIX->(dbSkip())
Enddo
   

//Campos
SX3->(dbSetOrder(1))
SX3->(dbSeek(cAlias))

While !SX3->(Eof())	.And. SX3->X3_ARQUIVO == cAlias

bValid := &( ' { | oModel, cID, xValue | FwInitCpo( oModel, cID, xValue ), lRetorno := (' + Iif(Empty(SX3->X3_VALID),'.T.', AllTrim( SX3->X3_VALID)   ) + '), FwCloseCpo( oModel, cID, xValue, lRetorno), lRetorno } ' )
         
bWhen  := IIf( Empty( SX3->X3_WHEN    ) , NIL , &( ' { | oModel, cID, xValue |   FwInitCpo( oModel, cID, xValue ), lRetorno := (' + AllTrim( SX3->X3_WHEN    )        + '), FwCloseCpo( oModel, cID, xValue, lRetorno, .T.), lRetorno } ' ) ) 
       
bRelac := IIf( Empty( SX3->X3_RELACAO ) , NIL , &( ' { | oModel, cID, xValue | FwInitCpo( oModel, cID, xValue ), lRetorno := (' + AllTrim( SX3->X3_RELACAO )     + '), FwCloseCpo( oModel, cID, xValue, .T.), lRetorno } ' ) )
		
	// 	oStruct:AddField( cTitulo					,	cToolTip				,
	// 	cIdField				, cTipo			, nTamanho			, nDecimal 
	//			, bValid, bWhen, aCombo									, lObrigat
	//					, bIniPad	, lChave, lUpdated	, lVirtual	)
		oStruct:AddField( AllTrim( X3Titulo()  )  	,	AllTrim( X3Descric() ) 	,;
		 	AllTrim( SX3->X3_CAMPO ), SX3->X3_TIPO	, SX3->X3_TAMANHO	,;
		 	 SX3->X3_DECIMAL	, bValid, bWhen, StrTokArr( AllTrim( X3CBox() ),;
		 	  ';')	, X3Obrigat( SX3->X3_CAMPO ), bRelac	, Nil	, Nil		,;
		 	   ( SX3->X3_CONTEXT == 'V' ))	
		
	SX3->(dbSkip())	
		
End


//Gatilho
cPrefCpo := PrefixoCpo( cAlias )

SX7->( dbSetOrder( 1 ) )
SX7->( dbSeek( cPrefCpo ) )

While !SX7->(Eof()) .And. Substr(SX7->X7_CAMPO,1,3) == cPrefCpo
		
	//----------------------------------------
	//Monta o code-block da estrutura Pre 
	//----------------------------------------
	Do Case
		Case SX7->X7_SEEK=="S" .And. !Empty(SX7->X7_CONDIC)
		cPreTrg += ""+SX7->X7_ALIAS+"->(dbSetOrder("+AllTrim(Str(SX7->X7_ORDEM,2))+;
		")),"+SX7->X7_ALIAS+"->(MsSeek("+AllTrim(SX7->X7_CHAVE)+")),"+;
		AllTrim(SX7->X7_CONDIC)
		
		Case SX7->X7_SEEK=="N" .And. !Empty(SX7->X7_CONDIC)
		cPreTrg += AllTrim(SX7->X7_CONDIC)                
		
		Case SX7->X7_SEEK=="S" .And. Empty(SX7->X7_CONDIC)
		cPreTrg += ""+SX7->X7_ALIAS+"->(dbSetOrder("+AllTrim(Str(SX7->X7_ORDEM,2))+;
		")),"+SX7->X7_ALIAS+"->(MsSeek("+AllTrim(SX7->X7_CHAVE)+"))"
	
	EndCase
	
	If !Empty(cPreTrg)
	  cPreTrg := &("{|oFW| bErro := FWInitTrg(oFW,'"+AllTrim(SX7->X7_CAMPO)+"','"+;
	     AllTrim(SX7->X7_CDOMIN)+"'),xRetorno:=("+cPreTrg+"),FwCloseTrg(oFW,'"+;
	  AllTrim(SX7->X7_CAMPO)+"','"+AllTrim(SX7->X7_CDOMIN)+"',xRetorno,bErro) }" )
	EndIf
	If Empty(cPreTrg)
		cPreTrg := Nil
	EndIf
	//----------------------------------------
	//Monta o code-block da estrutura Exec
	//----------------------------------------
	If Empty(SX7->X7_REGRA)
	  cExecTrg := &("{|oFW| bErro := FWInitTrg(oFW,'"+AllTrim(SX7->X7_CAMPO)+"','"+;
	  AllTrim(SX7->X7_CDOMIN)+"'),xRetorno := Nil,FwCloseTrg(oFW,'"+;
	  AllTrim(SX7->X7_CAMPO)+"','"+AllTrim(SX7->X7_CDOMIN)+"',xRetorno,bErro) }" )
	Else
	  cExecTrg := &("{|oFW| bErro := FWInitTrg(oFW,'"+AllTrim(SX7->X7_CAMPO)+"','"+	  AllTrim(SX7->X7_CDOMIN)+"'),xRetorno := ("+AllTrim(SX7->X7_REGRA)+"),  FwCloseTrg(oFW,'"+AllTrim(SX7->X7_CAMPO)+"','"+AllTrim(SX7->X7_CDOMIN)+"',  xRetorno,bErro) }" )
	EndIf
	
	
	//oStruct:AddTrigger( cIdOrig					, cIdDest				 , bValid									  , bRegra									   )
	//oStruct:AddTrigger( AllTrim(SX7->X7_CAMPO)	, AllTrim(SX7->X7_CDOMIN), &( ' { |oModel| ' + SX7->X7_CONDIC + ' } ') , &( ' { |oModel| ' + SX7->X7_REGRA  + ' } '))
	  oStruct:AddTrigger(AllTrim(SX7->X7_CAMPO)		, AllTrim(SX7->X7_CDOMIN),	cPreTrg,	cExecTrg)
	  
	SX7->(dbSkip())	  
End

RestArea( aAreaSX2 )
RestArea( aAreaSX3 )
RestArea( aAreaSX7 )
RestArea( aAreaSIX )
RestArea( aArea )

Return(oStruct)  



/*
ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัออออออออออออออออออออหออออออัอออออออออออออปฑฑ
ฑฑบPrograma  ณMVCAULA6  บAutor  ณMicrosiga           บ Data ณ  05/30/12   บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯออออออออออออออออออออสออออออฯอออออออออออออนฑฑ
ฑฑบDesc.     ณ                                                            บฑฑ
ฑฑบ          ณ                                                            บฑฑ
ฑฑฬออออออออออุออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออนฑฑ
ฑฑบUso       ณ AP                                                        บฑฑ
ฑฑศออออออออออฯออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿
*/
Static Function DefStruView(cAlias)
Local aArea		:=	GetArea()
Local aAreaSX3	:=	SX3->(GetArea())
Local aCombo	:=	{}
Local nInitCBox := 	0
Local nMaxLenCb := 	0
Local aAux      := 	{}
Local cGSC      := 	''
Local oStruct   := 	FWFormViewStruct():New()

//-------------------------------------------------------------------
// Campos
//-------------------------------------------------------------------
SX3->( dbSetOrder( 1 ) )
SX3->( dbSeek( cAlias ) )

While !SX3->(Eof())	.And. SX3->X3_ARQUIVO == cAlias
	
	aCombo	:=	{}    

	If !( '_FILIAL' $ SX3->X3_CAMPO )
	
		If !Empty(X3Cbox())
				nInitCBox	:=	0
				nMaxLenCb	:=	0
				
				aAux	:=	RetSX3Box(X3CBox(), @nInitCBox, @nMaxLenCb, SX3->X3_TAMANHO)
				aEval(aAux, {|Campo| aAdd(aCombo,Campo[1])} )				
		EndIf
		
		bPictVar := IIf( Empty( SX3->X3_PICTVAR ), NIL , &( ' { | oModel, cID, xValue | ' + AllTrim( SX3->X3_PICTVAR ) + ' } ' ) )
		cGSC     := IIf( Empty( X3Cbox() ) , IIf( SX3->X3_TIPO == 'L', 'CHECK', 'GET' ) , 'COMBO' )
		
		
		//oStruct:AddField( cIdField				, cOrdem			, cTitulo				, cDescri				, aHelp, cTipo	, cPicture			, bPictVar, cF3			, lUpdate				, cFolder		, cGroup		, aCombo, nTamMaxCBO, cInitBrw		, lVirtual					)
		 oStruct:AddField( AllTrim( SX3->X3_CAMPO  ), SX3->X3_ORDEM		, AllTrim( X3Titulo()  ), AllTrim( X3Descric() ), Nil  , cGSC	, SX3->X3_PICTURE	, bPictVar, SX3->X3_F3	, SX3->X3_VISUAL <> 'V'	, SX3->X3_FOLDER, SX3->X3_FOLDER, aCombo, nMaxLenCb	, SX3->X3_INIBRW, ( SX3->X3_CONTEXT == 'V' ))
		
	EndIf
	
	SX3->(dbSkip())
End


RestArea( aAreaSX3 )
RestArea( aArea )

Return(oStruct)



/*
ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัออออออออออออออออออออหออออออัอออออออออออออปฑฑ
ฑฑบPrograma  ณMVCAULA6  บAutor  ณMicrosiga           บ Data ณ  05/30/12   บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯออออออออออออออออออออสออออออฯอออออออออออออนฑฑ
ฑฑบDesc.     ณ                                                            บฑฑ
ฑฑบ          ณ                                                            บฑฑ
ฑฑฬออออออออออุออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออนฑฑ
ฑฑบUso       ณ AP                                                        บฑฑ
ฑฑศออออออออออฯออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿
*/
Static Function MVCMODELPOS(oModel)
Local nOperation	:=	oModel:GetOperation()
Local oModelGrid	:=	oModel:GetModel('ID_VIEW_GRD_MVCAULA6')
Local lRet			:=	.T.

If nOperation	==	3
	Do Case
		Case Empty(FwFldGet('ZA2_NOME'))
			lRet	:= .F.
			MsgInfo("Informe um Autor","Aten็ใo")
		Case Empty(oModel:GetValue('ID_MODEL_FLD_MVCAULA6','ZA1_GENERO'))
			lRet	:= .F.
			MsgInfo("Informe uma Musica","Aten็ใo")
	EndCase
EndIf


Return lRet
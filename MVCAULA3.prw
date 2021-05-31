#Include "Totvs.ch"
#Include "FwMvcDef.ch"


/*
ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัออออออออออออออออออออหออออออัอออออออออออออปฑฑ
ฑฑบPrograma  ณMVCAULA3  บAutor  ณFABRICA ASDVPL       บ Data ณ  05/27/12   บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯออออออออออออออออออออสออออออฯอออออออออออออนฑฑ
ฑฑบDesc.     ณPrograma exemplo da utiliza็ใo das classes de MVC           บฑฑ
ฑฑบ          ณEstrutura Pai e Filho                                       บฑฑ
ฑฑฬออออออออออุออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออนฑฑ
ฑฑบUso       ณ Aula de MVC                                                บฑฑ
ฑฑศออออออออออฯออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿
*/
User Function MVCAULA3()

	Private oBrowse := FwMBrowse():New()				//Variavel de Browse 
	
	//Alias do Browse
	oBrowse:SetAlias('ZA3')
	
	//Descri็ใo da Parte Superior Esquerda do Browse
	oBrowse:SetDescripton("Albuns") 
	
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
ฑฑบPrograma  ณMVCAULA3  บAutor  ณFABRICA ASDVPL       บ Data ณ  05/27/12   บฑฑ
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
		ADD OPTION aMenu TITLE 'Visualizar' ACTION 'VIEWDEF.MVCAULA3'	OPERATION 2 ACCESS 0
		ADD OPTION aMenu TITLE 'Incluir'    ACTION 'VIEWDEF.MVCAULA3' 	OPERATION 3 ACCESS 0
		ADD OPTION aMenu TITLE 'Alterar'    ACTION 'VIEWDEF.MVCAULA3' 	OPERATION 4 ACCESS 0
		ADD OPTION aMenu TITLE 'Excluir'    ACTION 'VIEWDEF.MVCAULA3' 	OPERATION 5 ACCESS 0
		ADD OPTION aMenu TITLE 'Copiar'     ACTION 'VIEWDEF.MVCAULA3'	OPERATION 9 ACCESS 0
	Return(aMenu)
	


/*
ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัออออออออออออออออออออหออออออัอออออออออออออปฑฑ
ฑฑบPrograma  ณMVCAULA3  บAutor  ณFABRICA ASDVPL       บ Data ณ  05/27/12   บฑฑ
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
	Local oStruct1	:=	FWFormStruct(1,'ZA3', /*bAvalCampo*/, /*lViewUsado*/ ) //Retorna a Estrutura do Alias passado como Parametro (1=Model,2=View)
Local oStruct2	:=	FWFormStruct(1,'ZA4', /*bAvalCampo*/, /*lViewUsado*/ ) //Retorna a Estrutura do Alias passado como Parametro (1=Model,2=View)
Local oStruct3	:=	FWFormStruct(1,'ZA5', /*bAvalCampo*/, /*lViewUsado*/ ) //Retorna a Estrutura do Alias passado como Parametro (1=Model,2=View)
Local oModel
//Instancia do Objeto de Modelo de Dados
oModel	:=	MpFormModel():New('MDLAULA3',/*Pre-Validacao*/,/*Pos-Validacao*/,/*Commit*/,/*Cancel*/)

//Adiciona um modelo de Formulario de Cadastro Similar เ Enchoice ou Msmget
oModel:AddFields('ID_MODEL_FLD_MVCAULA3', /*cOwner*/, oStruct1, /*bPreValidacao*/, /*bPosValidacao*/, /*bCarga*/ )

//Adiciona um Modelo de Grid somilar เ MsNewGetDados, BrGetDb
oModel:AddGrid( 'ID_MODEL_GRD1_MVCAULA3', 'ID_MODEL_FLD_MVCAULA3', oStruct2, /*bLinePre*/, /*bLinePost*/, /*bPreVal*/, /*bPosVal*/, /*BLoad*/ )
oModel:AddGrid( 'ID_MODEL_GRD2_MVCAULA3', 'ID_MODEL_GRD1_MVCAULA3', oStruct3, /*bLinePre*/, /*bLinePost*/, /*bPreVal*/, /*bPosVal*/, /*BLoad*/ )

//Adiciona campos calculados
oModel:AddCalc('ID_MODEL_CALC1_MVCAULA3','ID_MODEL_FLD_MVCAULA3',;
'ID_MODEL_GRD1_MVCAULA3','ZA4_MUSICA','ID_CALC1' , 'COUNT')

// Faz relaciomaneto entre os compomentes do model
oModel:SetRelation( 'ID_MODEL_GRD1_MVCAULA3', { { 'ZA4_FILIAL', 'xFilial( "ZA4")' },;
 { 'ZA4_ALBUM' , 'ZA3_ALBUM'  } } , 'ZA4_MUSICA'  )
oModel:SetRelation( 'ID_MODEL_GRD2_MVCAULA3', { { 'ZA5_FILIAL', 'xFilial( "ZA5")' },;
 { 'ZA5_ALBUM' , 'ZA3_ALBUM'  }, { 'ZA5_MUSICA', 'ZA4_MUSICA' } } , 'ZA5_INTER'  )

//Liga o controle de nใo repeti็ใo de Linha
oModel:GetModel( 'ID_MODEL_GRD1_MVCAULA3' ):SetUniqueLine( { 'ZA4_MUSICA' } )
oModel:GetModel( 'ID_MODEL_GRD2_MVCAULA3' ):SetUniqueLine( { 'ZA5_INTER'  } )

//Adiciona Descricao do Modelo de Dados
oModel:SetDescription( 'Modelo de Dados de Albuns' )

//Adiciona Descricao dos Componentes do Modelo de Dados
oModel:GetModel( 'ID_MODEL_FLD_MVCAULA3' ):SetDescription( 'Dados do Album' )
oModel:GetModel( 'ID_MODEL_GRD1_MVCAULA3' ):SetDescription( 'Dados das Musicas do Album' )
oModel:GetModel( 'ID_MODEL_GRD2_MVCAULA3' ):SetDescription( 'Interpretes das Musicas do Album' )


Return(oModel)


/*
ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัออออออออออออออออออออหออออออัอออออออออออออปฑฑ
ฑฑบPrograma  ณMVCAULA3  บAutor  ณFABRICA ASDVPL       บ Data ณ  05/27/12   บฑฑ
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
Local oStruct1	:=	FWFormStruct(2,'ZA3') 	//Retorna a Estrutura do Alias passado como Parametro (1=Model,2=View)
Local oStruct2	:=	FWFormStruct(2,'ZA4') 	//Retorna a Estrutura do Alias passado como Parametro (1=Model,2=View)
Local oStruct3	:=	FWFormStruct(2,'ZA5') 	//Retorna a Estrutura do Alias passado como Parametro (1=Model,2=View)
Local oModel	:=	FwLoadModel('MVCAULA3')	//Retorna o Objeto do Modelo de Dados 
Local oView		:=	FwFormView():New()      //Instancia do Objeto de Visualiza็ใo
Local oCalc1, oCalc2

//Campos Calculados
oCalc1	:=	FwFormViewStruct():New()
oCalc1:AddField('ID_CALC1', '01', 'Titulo Contagem de Musicas', ;
'Descricao Contagem de Musica'         , {}, 'N', '@9', {||}, "",.F.)

//Define o Preenchimento da Janela
oView:CreateHorizontalBox( 'ID_HBOX_SUPERIOR',15)
oView:CreateHorizontalBox( 'ID_HBOX_INFERIOR',85)

//Cria Objeto Folders Relacionando ao Box Inferior
oView:CreateFolder( 'ID_FOLDERS_MVCAULA3','ID_HBOX_INFERIOR')

//Adiciona as Pastas no Objeto
oView:AddSheet( 'ID_FOLDERS_MVCAULA3', 'ID_ITE_ABA01', 'Musica' )
oView:AddSheet( 'ID_FOLDERS_MVCAULA3', 'ID_ITE_ABA02', 'Interprete')

//Define o Modelo sobre qual a Visualizacao sera utilizada
oView:SetModel(oModel)	

//Vincula o Objeto visual de Cadastro com o modelo 
oView:AddField('ID_VIEW_FLD_MVCAULA3'  , oStruct1 ,'ID_MODEL_FLD_MVCAULA3'  )
oView:AddField('ID_VIEW_CALC1_MVCAULA3', oCalc1   ,'ID_MODEL_CALC1_MVCAULA3')

//Adiciona no nosso View um controle do tipo FormGrid(antiga newgetdados)
oView:AddGrid(  'ID_VIEW_GRD1_MVCAULA3', oStruct2, 'ID_MODEL_GRD1_MVCAULA3')
oView:AddGrid(  'ID_VIEW_GRD2_MVCAULA3', oStruct3, 'ID_MODEL_GRD2_MVCAULA3')
oView:AddOtherObject('ID_VIEW_OTHER_OBJ',{|oPanel| AddBtnPnl(oPanel)})

//Cria o Preenchimento da Tela vinculando a area de preenchiemnto com as Abas do Folder
	//Aba1
oView:CreateHorizontalBox( 'ID_HBOX_ABA01'   		, 65,	 ,/*lFixOixel*/, 'ID_FOLDERS_MVCAULA3', 'ID_ITE_ABA01' )
oView:CreateHorizontalBox( 'ID_HBOX_RODA_ABA01'   	, 20,	 ,/*lFixOixel*/, 'ID_FOLDERS_MVCAULA3', 'ID_ITE_ABA01' )
//Aba2
oView:CreateHorizontalBox( 'ID_HBOX_ABA02'   		, 65,  ,/*lFixOixel*/, 'ID_FOLDERS_MVCAULA3' , 'ID_ITE_ABA02' )
oView:CreateHorizontalBox( 'ID_HBOX_RODA_ABA02'   	, 20,	 ,/*lFixOixel*/, 'ID_FOLDERS_MVCAULA3' , 'ID_ITE_ABA02' )

// Relaciona o ID da View com o "box" para exibicao
oView:SetOwnerView( 'ID_VIEW_FLD_MVCAULA3'  , 'ID_HBOX_SUPERIOR' 	)
oView:SetOwnerView( 'ID_VIEW_GRD1_MVCAULA3' , 'ID_HBOX_ABA01' 		)
oView:SetOwnerView( 'ID_VIEW_GRD2_MVCAULA3' , 'ID_HBOX_ABA02' 		)
oView:SetOwnerView( 'ID_VIEW_CALC1_MVCAULA3', 'ID_HBOX_RODA_ABA01' 	)
oView:SetOwnerView( 'ID_VIEW_OTHER_OBJ'	  , 'ID_HBOX_RODA_ABA02' 	)

Return(oView)





Static Function AddBtnPnl(oPanel)

	@ 010, 010 Button 'Informa็๕es'			Size	36, 13 ;
	Message 'Contagem de Interpretes'  Pixel ;
	Action Contagem('ID_MODEL_GRD2_MVCAULA3', 'Existem no Grid de Autores') Of oPanel

	@ 010, 080 Button 'Autor/Interprete'	Size	36, 13 ;
	Message 'Incluir Autor/Interprete' Pixel ;
	Action ;
FWExecView('Inclusao por FWExecView','MVCAULA1',3,,{||lOk := .T.});
                      Of oPanel
Return
/*
ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัออออออออออออออออออออหออออออัอออออออออออออปฑฑ
ฑฑบPrograma  ณMVCAULA3  บAutor  ณMicrosiga           บ Data ณ  05/28/12   บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯออออออออออออออออออออสออออออฯอออออออออออออนฑฑ
ฑฑบDesc.     ณ                                                            บฑฑ
ฑฑบ          ณ                                                            บฑฑ
ฑฑฬออออออออออุออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออนฑฑ
ฑฑบUso       ณ AP        

                                                บฑฑ
ฑฑศออออออออออฯออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿
*/

Static Function Contagem( cIdGrid, cMsg )
Local oModel      := FWModelActive()
Local oModelFilho := oModel:GetModel( cIdGrid )
Local nI          := 0
Local nCtInc      := 0
Local nCtAlt      := 0
Local nCtDel      := 0
Local aSaveLines  := FWSaveRows()

For nI := 1 To oModelFilho:GetQtdLine()
	oModelFilho:GoLine( nI )

	If  oModelFilho:IsDeleted()
		nCtDel++
	ElseIf oModelFilho:IsInserted()
		nCtInc++
	ElseIf oModelFilho:IsUpdated()
		nCtAlt++
	EndIf
Next


Help( ,, 'HELP',, cMsg + CRLF + ;
Alltrim( Str( nCtInc ) ) + ' linhas incluidas' + CRLF + ;
Alltrim( Str( nCtAlt ) ) + ' linhas alteradas' + CRLF + ;
Alltrim( Str( nCtDel ) ) + ' linhas deletadas' + CRLF  ;
, 1, 0)

FWRestRows( aSaveLines )

Return NIL  




                                                  

/*
CRIAR MODELO 3 COM DUAS ABAS
- PROJETO APONTAMENTO DE HORAS
- ENCHOICE,  ESCOLHER O CODIGO DA PROPOSTA
- GETDADOS FOLDER 1, APONTAR OS SERVICOS
- GETDADOS FOLDER 2, APONTAR AS HORAS GASTAS EM CADA SERVICO
  EX: 21/09/2012 - INI 09:00  FIM 12:00  TOTAL 3:00 CUSTO (3 X CUSTO DO SERVICO)
        22/09/2012 - INI 09:00  FIM 12:00  TOTAL 3:00 CUSTO (3 X CUSTO DO SERVICO)

*/
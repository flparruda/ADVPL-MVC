#Include "Totvs.ch"
#Include "FwMvcDef.ch"


/*
ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑrsฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัออออออออออออออออออออหออออออัอออออออออออออปฑฑ
ฑฑบPrograma  ณMVCAULA5  บAutor  ณFABRICA SOFT. ADVPLบ Data ณ  05/27/12   บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯออออออออออออออออออออสออออออฯอออออออออออออนฑฑ
ฑฑบDesc.     ณPrograma exemplo da utiliza็ใo das classes de MVC           บฑฑ
ฑฑบ          ณEstrutura Pai e Filho                                       บฑฑ
ฑฑฬออออออออออุออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออนฑฑ
ฑฑบUso       ณ Aula de MVC                                                บฑฑ
ฑฑศออออออออออฯออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿
*/
User Function MVCAULA5()

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
ฑฑบPrograma  ณMVCAULA5  บAutor  ณFABRICA SOFT ADVPLบ Data ณ  05/27/12   บฑฑ
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
ADD OPTION aMenu TITLE 'Visualizar' ACTION 'VIEWDEF.MVCAULA5'	OPERATION 2 ACCESS 0
ADD OPTION aMenu TITLE 'Incluir'    ACTION 'VIEWDEF.MVCAULA5' 	OPERATION 3 ACCESS 0
ADD OPTION aMenu TITLE 'Alterar'    ACTION 'VIEWDEF.MVCAULA5' 	OPERATION 4 ACCESS 0
ADD OPTION aMenu TITLE 'Excluir'    ACTION 'VIEWDEF.MVCAULA5' 	OPERATION 5 ACCESS 0
ADD OPTION aMenu TITLE 'Imprimir'   ACTION 'VIEWDEF.MVCAULA5'	OPERATION 8 ACCESS 0
ADD OPTION aMenu TITLE 'Copiar'     ACTION 'VIEWDEF.MVCAULA5'	OPERATION 9 ACCESS 0


Return(aMenu)



/*
ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัออออออออออออออออออออหออออออัอออออออออออออปฑฑ
ฑฑบPrograma  ณMVCAULA5  บAutor  ณFABRICA SOFT ADVPLบ Data ณ  05/27/12   บฑฑ
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
Local oStruct1	:=	FWFormStruct(1,'ZA1', /*bAvalCampo*/, /*lViewUsado*/ ) //Retorna a Estrutura do Alias passado como Parametro (1=Model,2=View)
Local oStruct2	:=	FWFormStruct(1,'ZA2', /*bAvalCampo*/, /*lViewUsado*/ ) //Retorna a Estrutura do Alias passado como Parametro (1=Model,2=View)
Local oModel

//Adicionando Campos Manualmente
//oStruct1:AddField( cTitulo		, cToolTip			, cIdField		, cTipo	,
// nTam	, nDecimal	, bValid								, bWhen	, aCombo
//		, lObrigat	, bIniPad	, lChave, lUpdate	, lVirtual	)

oStruct1:AddField( 'Exemplo 1'	, 'Campo Exemplo 1'	, 'ZA1_EXEMP1'	, 'C'	,;
001	, 000		, {|| Pertence("12")				 }	, Nil	,;
{'1=Sim','2=Nใo'} , .F.		, Nil	 	, Nil	, Nil		, .T.		)
//----------------------------------------------------------------------------
oStruct1:AddField( 'Exemplo 2'	, 'Campo Exemplo 2'	, 'ZA1_EXEMP2'	, 'C'	,;
006	, 000		, {|| ExistChav('SA1',M->ZA1_EXEMP2,1)}	, Nil	, Nil 		, ;
.T.		, Nil	 	, Nil	, Nil		, .T.		)
//----------------------------------------------------------------------------
oStruct2:AddField( 'Exemplo 3'	, 'Campo Exemplo 3'	, 'ZA2_EXEMP3'	, 'L'	,;
001	, 000		, Nil									, Nil	, Nil 		,;
.T.		, {|| .T.}	, Nil	, Nil		, .T.		)


//Instancia do Objeto de Modelo de Dados
oModel	:=	MpFormModel():New('MDLAULA5',/*Pre-Validacao*/,/*Pos-Validacao*/,/*Commit*/,;
/*Commit*/,/*Cancel*/)

//Adiciona um modelo de Formulario de Cadastro Similar เ Enchoice ou Msmget
oModel:AddFields('ID_MODEL_FLD_MVCAULA5', /*cOwner*/, oStruct1, /*bPreValidacao*/, ;
/*bPosValidacao*/, /*bCarga*/ )

//Adiciona um Modelo de Grid somilar เ MsNewGetDados, BrGetDb
oModel:AddGrid( 'ID_MODEL_GRD_MVCAULA5', 'ID_MODEL_FLD_MVCAULA5', oStruct2,;
/*bLinePre*/, /*bLinePost*/, /*bPreVal*/, /*bPosVal*/, /*BLoad*/ )







// Faz relaciomaneto entre os compomentes do model
oModel:SetRelation( 'ID_MODEL_GRD_MVCAULA5', { { 'ZA2_FILIAL', 'xFilial( "ZA2" )' };
, { 'ZA2_MUSICA', 'ZA1_MUSICA' } }, 'ZA2_FILIAL + ZA2_MUSICA' )

//Liga o controle de nใo repeti็ใo de Linha
oModel:GetModel( 'ID_MODEL_GRD_MVCAULA5' ):SetUniqueLine( { 'ZA2_AUTOR' } )

// Indica que ้ opcional ter dados informados na Grid
//oModel:GetModel( 'ID_FLD_MVCAULA5' ):SetOptional(.T.)


//Adiciona Descricao do Modelo de Dados
oModel:SetDescription( 'Modelo de Dados de Musicas' )

//Adiciona Descricao dos Componentes do Modelo de Dados
oModel:GetModel( 'ID_MODEL_FLD_MVCAULA5' ):SetDescription( 'Formulario de Cadastro das Musicas' )
oModel:GetModel( 'ID_MODEL_GRD_MVCAULA5' ):SetDescription( 'Grid  de Cadastro dos Dados dos Autores' )

Return(oModel)













		
/*
ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัออออออออออออออออออออหออออออัอออออออออออออปฑฑ
ฑฑบPrograma  ณMVCAULA5  บAutor  ณFABRICA SOFT ADVPLบ Data ณ  05/27/12   บฑฑ
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
Local oStruct1	:=	FWFormStruct(2,'ZA1') 	//Retorna a Estrutura do Alias passado como Parametro (1=Model,2=View)
Local oStruct2	:=	FWFormStruct(2,'ZA2') 	//Retorna a Estrutura do Alias passado como Parametro (1=Model,2=View)
Local oModel	:=	FwLoadModel('MVCAULA5')	//Retorna o Objeto do Modelo de Dados
Local oView		:=	FwFormView():New()      //Instancia do Objeto de Visualiza็ใo
Local cOrdem1    := aTail( oStruct1:aFields )[2]
Local cOrdem2    := aTail( oStruct2:aFields )[2]


//oStruct1:AddField( cTitulo		, cOrdem					, cTitulo		,
// cDescri			, aHelp					, Tipo	, cPicture			, bPicVar
//	, cF3			, lUpdated	, cFolder	, cAgroup	, aCombo	, nLenOpc,
// cIniPad	, lVirtual	, cPicVar	, nJump	)
oStruct1:AddField( 'ZA1_EXEMP1'	, (cOrdem1 := Soma1(cOrdem1))	, 'Exemplo 1',;
'Campo Exemplo 1'	, {'Campo Exemplo 1'}	, 'C'	, '@!'				,;
Nil		, ''			, .T.		, Nil		, Nil		, {'1=Sim','2=Nใo'};
, Nil	 , Nil		, .T.		, Nil		, Nil	)
//--------------------------------------------------------------------------------
oStruct1:AddField( 'ZA1_EXEMP2'	, (cOrdem1 := Soma1(cOrdem1))	, 'Exemplo 2',;
'Campo Exemplo 2'	, {'Campo Exemplo 2'}	, 'C'	, '@!'				, Nil,;
'SA1'			, .T.		, Nil		, Nil		, 					, Nil ,;
Nil		, .T.		, Nil		, Nil	)
//----------------------------------------------------------------------------------
oStruct2:AddField( 'ZA2_EXEMP3'	, (cOrdem2 := Soma1(cOrdem2))	, 'Exemplo 3',;
'Campo Exemplo 3'	, {'Campo Exemplo 3'}	, 'L'	, ''				, Nil, ;
''			, .T.		, Nil		, Nil		, 					, Nil	 ,;
Nil		, .T.		, Nil		, Nil	)

//Removendo Campos Manualmente
oStruct1:RemoveField('ZA1_GENERO')

//Define o Modelo sobre qual a Visualizacao sera utilizada
oView:SetModel(oModel)

//Vincula o Objeto visual de Cadastro com o modelo
oView:AddField( 'ID_VIEW_FLD_MVCAULA5', oStruct1, 'ID_MODEL_FLD_MVCAULA5')

//Adiciona no nosso View um controle do tipo FormGrid(antiga newgetdados)
oView:AddGrid(  'ID_VIEW_GRD_MVCAULA5', oStruct2, 'ID_MODEL_GRD_MVCAULA5')

//Define o Preenchimento da Janela
oView:CreateHorizontalBox( 'ID_HBOX_SUPERIOR', 25 )
oView:CreateHorizontalBox( 'ID_HBOX_INFERIOR', 75 )


// Relaciona o ID da View com o "box" para exibicao
oView:SetOwnerView( 'ID_VIEW_FLD_MVCAULA5', 'ID_HBOX_SUPERIOR' )
oView:SetOwnerView( 'ID_VIEW_GRD_MVCAULA5', 'ID_HBOX_INFERIOR' )


// Define campos que terao Auto Incremento
oView:AddIncrementField( 'ID_VIEW_GRD_MVCAULA5', 'ZA2_ITEM' )

Return(oView)





#Include "Totvs.ch"
#Include "FwMvcDef.ch"

//==============================================================================
// MVCAULA0
//
//------------------------------------------------------------------------------

User Function MVCAULA0()

Private oBrowse 	:= FwMBrowse():New()				//Variavel de Browse 
oBrowse:SetAlias('ZZW')
oBrowse:SetDescripton("CONTROLE DE PRE-EMPENHO") 
oBrowse:AddLegend( "ZZW_STATUS=='1'", "GREEN", "Pendente"  )
oBrowse:AddLegend( "ZZW_STATUS=='2'", "RED"  , "Processado"  )

IF MSGNOYES("FILTRA PENDENTES?")
   oBrowse:SetFilterDefault("ZZW_STATUS == '1'")
ENDIF

oBrowse:DisableDetails()
oBrowse:setambiente(.f.)
oBrowse:SetWalkThru(.f.)
oBrowse:SetMenuDef('')
oBrowse:DisableReport()
oBrowse:DisableConfig()
oBrowse:DisableSaveConfig()
oBrowse:disablelocate()
oBrowse:DisableReport()

	
oBrowse:Activate()

Return


///==============================================================================
// MenuDef
//
//------------------------------------------------------------------------------


Static Function MenuDef()
Local aMenu :=	{}
	
ADD OPTION aMenu TITLE 'Pesquisar'  ACTION 'PesqBrw'       		OPERATION 1 ACCESS 0
ADD OPTION aMenu TITLE 'Visualizar' ACTION 'VIEWDEF.MVCAULA0'	OPERATION 2 ACCESS 0
ADD OPTION aMenu TITLE 'Incluir'    ACTION 'VIEWDEF.MVCAULA0' 	OPERATION 3 ACCESS 0
ADD OPTION aMenu TITLE 'Alterar'    ACTION 'VIEWDEF.MVCAULA0' 	OPERATION 4 ACCESS 0
ADD OPTION aMenu TITLE 'Excluir'    ACTION 'VIEWDEF.MVCAULA0' 	OPERATION 5 ACCESS 0
ADD OPTION aMenu TITLE 'Imprimir'   ACTION 'VIEWDEF.MVCAULA0'	OPERATION 8 ACCESS 0
ADD OPTION aMenu TITLE 'Copiar'     ACTION 'VIEWDEF.MVCAULA0'	OPERATION 9 ACCESS 0
	
Return(aMenu)



///==============================================================================
// MenuDef
//
//------------------------------------------------------------------------------

Static Function ModelDef()
//Retorna a Estrutura do Alias passado como Parametro (1=Model,2=View)
Local oStruct	:=	FWFormStruct(1,"ZA0") 
Local oModel

//Instancia do Objeto de Modelo de Dados
oModel	:=	MpFormModel():New('MDLAULA1',/*Pre-Validacao*/,/*Pos-Validacao*/;
                                       ,/*Commit*/,/*Cancel*/)

//Adiciona um modelo de Formulario de Cadastro Similar เ Enchoice ou Msmget
oModel:AddFields('ID_FLD_MVCAULA1', /*cOwner*/, oStruct, /*bPreValidacao*/;
                       , /*bPosValidacao*/, /*bCarga*/ )

oModel:SetPrimarykey({"PA1_COD"}) // chave primaria pois nao tem no sx2 x2_unico

//Adiciona Descricao do Modelo de Dados
oModel:SetDescription( 'Modelo de Dados do Cadastro de Autor/Interprete' )

//Adiciona Descricao do Componente do Modelo de Dados      
cTexto := 'Formulario de  Cadastro dos Dados de Autores/Interpretes'
oModel:GetModel( 'ID_FLD_MVCAULA1' ):SetDescription( cTexto )


Return(oModel)

          



/*
ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัออออออออออออออออออออหออออออัอออออออออออออปฑฑ
ฑฑบPrograma  ณMVCAULA1  บAutor  ณADVPL BIALE - FAB. SOFTWAREบ Data ณ  05/27/12   บฑฑ
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
Local oStruct	:=	FWFormStruct(2,"ZA0") 	//Retorna a Estrutura do Alias passado
                                            // como Parametro (1=Model,2=View)
Local oModel	:=	FwLoadModel('MVCAULA1')	//Retorna o Objeto do Modelo de Dados 
Local oView		:=	FwFormView():New()      //Instancia do Objeto de Visualiza็ใo

//Define o Modelo sobre qual a Visualizacao sera utilizada
oView:SetModel(oModel)	

//Vincula o Objeto visual de Cadastro com o modelo 
oView:AddField( 'ID_VIEW_MVCAULA1', oStruct, 'ID_FLD_MVCAULA1')

//Define o Preenchimento da Janela
oView:CreateHorizontalBox( 'ID_HTOP'  , 100 )
//oView:CreateHorizontalBox( 'ID_HDOWN' , 50 )
//OView:CreateVerticalBox( 'V_ESQ', 50, "H_HDOWN" )
//OView:CreateVerticalBox( 'V_DIR', 50, "H_HDOWN" )

// Relaciona o ID da View com o "box" para exibicao
oView:SetOwnerView( 'ID_VIEW_MVCAULA1', 'ID_HTOP' )

Return(oView)                       






                                                             







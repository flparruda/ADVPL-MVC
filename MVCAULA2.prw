#Include "Totvs.ch"
#Include "FwMvcDef.ch"


/*
�����������������������������������������������������������������������������
�����������������������������������������������������������������������������
�������������������������������������������������������������������������ͻ��
���Programa  �MVCAULA2  �Autor  �fab. software� Data �  05/27/12   ���
�������������������������������������������������������������������������͹��
���Desc.     �Programa exemplo da utiliza��o das classes de MVC           ���
���          �Estrutura Pai e Filho                                       ���
�������������������������������������������������������������������������͹��
���Uso       � Aula de MVC                                                ���
�������������������������������������������������������������������������ͼ��
�����������������������������������������������������������������������������
�����������������������������������������������������������������������������
*/
User Function MVCAULA2()

Private oBrowse 	:= FwMBrowse():New()				//Variavel de Browse 

//Alias do Browse
oBrowse:SetAlias('ZA1')

//Descri��o da Parte Superior Esquerda do Browse
oBrowse:SetDescripton("Musicas/Autores") 

//Habilita os Bot�es Ambiente e WalkThru
oBrowse:SetAmbiente(.T.)
oBrowse:SetWalkThru(.T.)

//Desabilita os Detalhes da parte inferior do Browse
//oBrowse:DisableDetails()


//Ativa o Browse
oBrowse:Activate()


Return

/*
�����������������������������������������������������������������������������
�����������������������������������������������������������������������������
�������������������������������������������������������������������������ͻ��
���Programa  �MVCAULA2  �Autor  �fab. software� Data �  05/27/12   ���
�������������������������������������������������������������������������͹��
���Desc.     �Funcao para Menu do Browse                                  ���
���          �                                                            ���
�������������������������������������������������������������������������͹��
���Uso       � Aula MVC                                                   ���
�������������������������������������������������������������������������ͼ��
�����������������������������������������������������������������������������
�����������������������������������������������������������������������������
*/

Static Function MenuDef()
Local aMenu :=	{}
	
	ADD OPTION aMenu TITLE 'Pesquisar'  ACTION 'PesqBrw'       		OPERATION 1 ACCESS 0
	ADD OPTION aMenu TITLE 'Visualizar' ACTION 'VIEWDEF.MVCAULA2'	OPERATION 2 ACCESS 0
	ADD OPTION aMenu TITLE 'Incluir'    ACTION 'VIEWDEF.MVCAULA2' 	OPERATION 3 ACCESS 0
	ADD OPTION aMenu TITLE 'Alterar'    ACTION 'VIEWDEF.MVCAULA2' 	OPERATION 4 ACCESS 0
	ADD OPTION aMenu TITLE 'Excluir'    ACTION 'VIEWDEF.MVCAULA2' 	OPERATION 5 ACCESS 0
	ADD OPTION aMenu TITLE 'Imprimir'   ACTION 'VIEWDEF.MVCAULA2'	OPERATION 8 ACCESS 0
	ADD OPTION aMenu TITLE 'Copiar'     ACTION 'VIEWDEF.MVCAULA2'	OPERATION 9 ACCESS 0
	
	
Return(aMenu)



/*
�����������������������������������������������������������������������������
�����������������������������������������������������������������������������
�������������������������������������������������������������������������ͻ��
���Programa  �MVCAULA2  �Autor  �fab. software� Data �  05/27/12   ���
�������������������������������������������������������������������������͹��
���Desc.     �Funcao de Modelo de Dados.                                  ���
���          �Onde � definido a estrutura de dados                        ���
���          �Regra de Negocio.                                           ���
�������������������������������������������������������������������������͹��
���Uso       � Aula de MVC                                                ���
�������������������������������������������������������������������������ͼ��
�����������������������������������������������������������������������������
�����������������������������������������������������������������������������
*/

Static Function ModelDef()
Local oStruct1	:=	FWFormStruct(1,'ZA1', /*bAvalCampo*/, /*lViewUsado*/ ) //Retorna a Estrutura do Alias passado como Parametro (1=Model,2=View)
Local oStruct2	:=	FWFormStruct(1,'ZA2', /*bAvalCampo*/, /*lViewUsado*/ ) //Retorna a Estrutura do Alias passado como Parametro (1=Model,2=View)
Local oModel

//Instancia do Objeto de Modelo de Dados
oModel	:=	MpFormModel():New('MDLAULA2',/*Pre-Validacao*/,/*Pos-Validacao*/,/*Commit*/,/*Cancel*/)

//Adiciona um modelo de Formulario de Cadastro Similar � Enchoice ou Msmget
oModel:AddFields('ID_MODEL_FLD_MVCAULA2', /*cOwner*/, oStruct1, /*bPreValidacao*/, /*bPosValidacao*/, /*bCarga*/ )
                               		
//Adiciona um Modelo de Grid somilar � MsNewGetDados, BrGetDb
oModel:AddGrid( 'ID_MODEL_GRD_MVCAULA2', 'ID_MODEL_FLD_MVCAULA2', oStruct2, /*bLinePre*/,;
 /*bLinePost*/, /*bPreVal*/, /*bPosVal*/, /*BLoad*/ )


// Faz relaciomaneto entre os compomentes do model
oModel:SetRelation( 'ID_MODEL_GRD_MVCAULA2', { { 'ZA2_FILIAL', 'xFilial( "ZA2" )' };
          , { 'ZA2_MUSICA', 'ZA1_MUSICA' } }, 'ZA2_FILIAL + ZA2_MUSICA' )

//Liga o controle de n�o repeti��o de Linha
oModel:GetModel( 'ID_MODEL_GRD_MVCAULA2' ):SetUniqueLine( { 'ZA2_AUTOR' } )

// Indica que � opcional ter dados informados na Grid
//oModel:GetModel( 'ID_FLD_MVCAULA2' ):SetOptional(.T.)

//Adiciona Descricao do Modelo de Dados
oModel:SetDescription( 'Modelo de Dados de Musicas' )

//Adiciona Descricao dos Componentes do Modelo de Dados
oModel:GetModel( 'ID_MODEL_FLD_MVCAULA2' ):SetDescription( 'Formulario de Cadastro das Musicas' )
oModel:GetModel( 'ID_MODEL_GRD_MVCAULA2' ):SetDescription( 'Grid  de Cadastro dos Dados dos Autores' )
Return(oModel)


/*
�����������������������������������������������������������������������������
�����������������������������������������������������������������������������
�������������������������������������������������������������������������ͻ��
���Programa  �MVCAULA2  �Autor  �fab. software� Data �  05/27/12   ���
�������������������������������������������������������������������������͹��
���Desc.     �Funcao de Visualizacao.                                     ���
���          �Onde � definido a visualizacao da Regra de Negocio.         ���
�������������������������������������������������������������������������͹��
���Uso       � Aula de MVC                                                ���
�������������������������������������������������������������������������ͼ��
�����������������������������������������������������������������������������
�����������������������������������������������������������������������������
*/

Static Function ViewDef()
Local oStruct1	:=	FWFormStruct(2,'ZA1') 	//Retorna a Estrutura do Alias passado como Parametro (1=Model,2=View)
Local oStruct2	:=	FWFormStruct(2,'ZA2') 	//Retorna a Estrutura do Alias passado como Parametro (1=Model,2=View)
Local oModel	:=	FwLoadModel('MVCAULA2')	//Retorna o Objeto do Modelo de Dados 
Local oView		:=	FwFormView():New()      //Instancia do Objeto de Visualiza��o

//Define o Modelo sobre qual a Visualizacao sera utilizada
oView:SetModel(oModel)	

//Vincula o Objeto visual de Cadastro com o modelo 
oView:AddField( 'ID_VIEW_FLD_MVCAULA2', oStruct1, 'ID_MODEL_FLD_MVCAULA2')

//Adiciona no nosso View um controle do tipo FormGrid(antiga newgetdados)
oView:AddGrid(  'ID_VIEW_GRD_MVCAULA2', oStruct2, 'ID_MODEL_GRD_MVCAULA2')

//Define o Preenchimento da Janela
oView:CreateHorizontalBox( 'ID_HBOX_SUPERIOR', 15 )
oView:CreateHorizontalBox( 'ID_HBOX_INFERIOR', 85 )


// Relaciona o ID da View com o "box" para exibicao
oView:SetOwnerView( 'ID_VIEW_FLD_MVCAULA2', 'ID_HBOX_SUPERIOR' )
oView:SetOwnerView( 'ID_VIEW_GRD_MVCAULA2', 'ID_HBOX_INFERIOR' )


// Define campos que terao Auto Incremento
oView:AddIncrementField( 'ID_VIEW_GRD_MVCAULA2', 'ZA2_ITEM' )




Return(oView)



/*
Criar MVC para Cadastro de Prospects(Enchoice)
- Codigo, Razao, n Fantasia, email, data cadastro, msblql

Criar MVC para Cadastro de Escopos de Servicos(Enchoice)
- Codigo, Descricao, Custo Hr, Data

Criar MVC para Cadastro de Propostas(modeo 3)
Enchoice
- Codigo Proposta, escopo proposta, Codigo propsect, nome, campo telefone, contato, data, cod revisao
Getdados
- Item, Codigo Escopo, Qtde Hrs, Campo Memo, Custo Previsto

	
*/

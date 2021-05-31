#INCLUDE 'PROTHEUS.CH'
#INCLUDE 'FWMVCDEF.CH'



/*
ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัออออออออออออออออออออหออออออัอออออออออออออปฑฑ
ฑฑบPrograma  ณMVCAULA9  บAutor  ณMicrosiga           บ Data ณ  05/30/12   บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯออออออออออออออออออออสออออออฯอออออออออออออนฑฑ
ฑฑบDesc.     ณ                                                            บฑฑ
ฑฑบ          ณ                                                            บฑฑ
ฑฑฬออออออออออุออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออนฑฑ
ฑฑบUso       ณ AP                                                        บฑฑ
ฑฑศออออออออออฯออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿
*/

User Function MVCAULA9()

Local aCoors  := FWGetDialogSize(oMainWnd)  //{0000,0000,(oMainWnd:nHeight * 0.95),(oMainWnd:nWidth*0.95)}//GetDialogSize(oMainWnd)
Local oPanelUp, oFWLayer, oPanelLeft, oPanelRight, oBrowseUp, oBrowseLeft, oBrowseRight, oRelacZA4, oRelacZA5

Private oDlgPrinc

Define MsDialog oDlgPrinc Title 'Multiplos FWmBrowse' From aCoors[1],aCoors[2] To aCoors[3],aCoors[4] Pixel

//
// Cria o conteiner onde serใo colocados os browses
//
oFWLayer := FWLayer():New()
oFWLayer:Init( oDlgPrinc, .F., .T. )

//
// Define Painel Superior
//
oFWLayer:AddLine( 'UP', 50, .F. )                       // Cria uma "linha" com 50% da tela
oFWLayer:AddCollumn( 'ALL', 100, .T., 'UP' )            // Na "linha" criada eu crio uma coluna com 100% da tamanho dela
oFWLayer:AddWindow('ALL','SUPERIOR','Albuns',100,.F.,.F.,,'UP',)
oPanelUp := oFWLayer:GetWinPanel( 'ALL','SUPERIOR', 'UP' )         // Pego o objeto desse peda็o do container

//
// FWmBrowse Superior Albuns
//
oBrowseUp:= FWmBrowse():New()
oBrowseUp:SetOwner( oPanelUp )                          // Aqui se associa o browse ao componente de tela
//oBrowseUp:SetDescription( "Albuns" )
oBrowseUp:SetAlias( 'ZA3' )
//oBrowseUp:SetMenuDef( 'MVCAULA9' )                   // Define de onde virao os botoes deste browse
oBrowseUp:DisableDetails()
oBrowseUp:SetProfileID( '1' )
oBrowseUp:Activate()

//
// Painel Inferior
//
oFWLayer:AddLine( 'DOWN'	, 50 , .F. )                     // Cria uma "linha" com 50% da tela
oFWLayer:AddCollumn( 'LEFT' ,  50, .T., 'DOWN' )        // Na "linha" criada eu crio uma coluna com 50% da tamanho dela
oFWLayer:AddCollumn( 'RIGHT',  50, .T., 'DOWN' )        // Na "linha" criada eu crio uma coluna com 50% da tamanho dela
oFWLayer:AddWindow('LEFT' ,'INF_ESQ','Musicas'				,100,.F.,.F.,,'DOWN',)
oFWLayer:AddWindow('RIGHT','INF_DIR','Autores/Interpretes'	,100,.F.,.F.,,'DOWN',)

oPanelLeft  := oFWLayer:GetWinPanel( 'LEFT' ,'INF_ESQ' 	,'DOWN' )  // Pego o objeto do peda็o esquerdo
oPanelRight := oFWLayer:GetWinPanel( 'RIGHT','INF_DIR' 	,'DOWN' )  // Pego o objeto do peda็o direito

//
// Lado Esquerdo Musicas
//
oBrowseLeft:= FWMBrowse():New()
oBrowseLeft:SetOwner( oPanelLeft )
//oBrowseLeft:SetDescription( 'Musicas' )
oBrowseLeft:SetMenuDef( 'XXXXX' )                       // Referencia uma funcao que nao tem menu para que nao exiba nenhum botao
oBrowseLeft:DisableDetails()
oBrowseLeft:SetAmbiente(.F.)
oBrowseLeft:SetWalkThru(.F.)
oBrowseLeft:SetAlias( 'ZA4' )
oBrowseLeft:SetProfileID( '2' )
oBrowseLeft:Activate()

//
// Lado Direito Autores/Interpretes
//
oBrowseRight:= FWMBrowse():New()
oBrowseRight:SetOwner( oPanelRight )
//oBrowseRight:SetDescription( 'Autores/Interpretes' )
oBrowseRight:SetMenuDef( 'XXXXX' )                      // Referencia uma funcao que nao tem menu para que nao exiba nenhum botao
oBrowseRight:DisableDetails()
oBrowseRight:SetAmbiente(.F.)
oBrowseRight:SetWalkThru(.F.)
oBrowseRight:SetAlias( 'ZA5' )
oBrowseRight:SetProfileID( '3' )
oBrowseRight:Activate()

//
// Relacionamento entre os Paineis
//
oRelacZA4:= FWBrwRelation():New()
oRelacZA4:AddRelation( oBrowseUp  , oBrowseLeft , { { 'ZA4_FILIAL', 'xFilial( "ZA4" )' }, { 'ZA4_ALBUM' , 'ZA3_ALBUM'  } } )
oRelacZA4:Activate()

oRelacZA5:= FWBrwRelation():New()
oRelacZA5:AddRelation( oBrowseLeft, oBrowseRight, { { 'ZA5_FILIAL', 'xFilial( "ZA5" )' }, { 'ZA5_ALBUM' , 'ZA4_ALBUM'  }, { 'ZA5_MUSICA', 'ZA4_MUSICA' } } )
oRelacZA5:Activate()

Activate MsDialog oDlgPrinc Center

Return NIL

Static Function MenuDef()
Local aRotina := {}

aAdd( aRotina, { 'Pesquisar' , 'PesqBrw'            , 0, 1, 0, .T. } )
aAdd( aRotina, { 'Visualizar', 'VIEWDEF.MVCAULA9', 0, 2, 0, NIL } )
aAdd( aRotina, { 'Incluir'   , 'VIEWDEF.MVCAULA9', 0, 3, 0, NIL } )
aAdd( aRotina, { 'Alterar'   , 'VIEWDEF.MVCAULA9', 0, 4, 0, NIL } )
aAdd( aRotina, { 'Excluir'   , 'VIEWDEF.MVCAULA9', 0, 5, 0, NIL } )
aAdd( aRotina, { 'Imprimir'  , 'VIEWDEF.MVCAULA9', 0, 8, 0, NIL } )
aAdd( aRotina, { 'Sair'      , 'u_SairTela()'       , 0, 0, 0, NIL } )
Return aRotina

User Function SairTela()
oDlgPrinc:End()
Return


//-------------------------------------------------------------------
Static Function ModelDef()
// Utilizo um model que ja existe
Return FWLoadModel( 'MVCAULA3' )


//-------------------------------------------------------------------
Static Function ViewDef()
// Utilizo uma View que ja existe
Return FWLoadView( 'MVCAULA3' )
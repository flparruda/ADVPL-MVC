#Include "Totvs.ch"
#Include "FwMvcDef.ch"

#Define URLWS	"http://127.0.0.1:8080/ws/FWWSMODEL.apw"

User Function MVCGetXml()
Local oDialog
Local cGetModel	:=	'MATA020'+Space(20), oGetModel	
Local cGetXml	:=  Space(30), oGetXml	

	Define MsDialog oDialog From 0,0 To 450,330 Title 'Estrutura XML do WebService' Pixel 
		@ 005, 005 MsGet oGetModel Var cGetModel Picture '@!' Size 150,10 Pixel Of oDialog Valid !Empty(cGetModel)
		@ 025, 005 Get   oGetXml   Var cGetXml   MultiLine  Size 150,150 Pixel Of oDialog
		
		@200,020 BUTTON "&Ok" 	SIZE 40,10 PIXEL OF oDialog ACTION (cGetXml := GetXml(AllTrim(cGetModel)), oGetXml:Refresh())
		@200,070 BUTTON "&Sair" SIZE 40,10 PIXEL OF oDialog ACTION oDialog:End()
		
	Activate MsDialog oDialog Centered
Return

Static Function GetXml(cModelId)

Local	oMvcWs	:=	WsFwWsModel():New()
Local	cTexto	:=	""
Local	cToken	:=	""

RpcSetType( 3 )
RpcSetEnv( '99', '01',,,,,{"ZA0","ZA2","ZA5","SXE","SXF","SX6"} )


cTexto	:=	"Tabela Atual: " + Alias() +CRLF
cTexto += Replicate('-',84)	+ CRLF


//Define a Url do WS
oMvcWs:_URL	:=	URLWS

//Usuario, Token e Passwords
oMvcWs:cUserLogin := 'Admin'
//oMvcWs:cUserToken := 'Admin'
oMvcWs:cPassword  := ''

//Efetua o Login e Retorna o Token de Acesso
If oMvcWs:Login()	
	cTexto += 'Logou!' + CRLF
	
	oMvcWs:cUserToken := oMvcWs:cLoginResult
Else
	cTexto += 'Problemas em obter o token '  + CRLF + WSError() 	
EndIf	

cTexto += Replicate('-',84)	+ CRLF

//Modelo de Dados a Ser retornado
oMvcWs:cModelId := cModelId

//Retorna a Descricao do modelo
cTexto += 'Descricao do Modelo'

If oMvcWs:GetDescription()
	cTexto += oMvcWs:cGetDescriptionResult + CRLF   	
Else
   	cTexto += 'Problemas em obter a descricao dos Dados do Model'  + CRLF + WSError() 
EndIf

cTexto += Replicate('-',84)	+ CRLF

//Retorna a estrutura de Dados do modelo

cTexto += 'XML do Modelo'

If oMvcWs:GetXmlData()
	cTexto := oMvcWs:cGetXMLDataResult + CRLF
Else
   	cTexto += 'Problemas em obter Folha de Dados do Model'  + CRLF + WSError() 
EndIf

cTexto += Replicate('-',84)	+ CRLF

// Obtem o esquema de dados XML (XSD)

cTexto += 'Schema do Modelo'

If oMvcWs:GetSchema()
	cTexto += oMvcWs:cGetSchemaResult + CRLF
Else
   	cTexto += 'Problemas em obter schema dos Dados do Model'  + CRLF + WSError() 
EndIf

cTexto += Replicate('-',84)	+ CRLF

RpcClearEnv()


Return(cTexto)


Static Function WSError()
Return IIf( Empty( GetWscError(3) ), GetWscError(1), GetWscError(3) )
** Settings **
Library  SeleniumLibrary

** Variables **
#Campos
${input_nome}     //input[@id="nome"]
${input_email}    //input[@id="email"]
${input_senha}    //input[@id="senha"]
${input_bnt}      //input[@class="btn btn-primary"]

#Massa de Dados
${campo_nome}     teste
${campo_email}    teste@testando5.com
${campo_senha}    teste

#Alertas
${alerta_sucesso}    //div[@class="alert alert-success"]


** Keywords **
 Dado que o usuario acesse o site seuBarriga
    Open Browser  https://seubarriga.wcaquino.me/  chrome
    Maximize Browser Window
E usuario clicar em cadastrar novo usuario
    Click Link    xpath=//a[@href="/cadastro"]       
Quando o usuario inserir o nome
    Input Text    ${input_nome}    ${campo_nome}

E o usuario inserir o email
    Input Text    ${input_email}    ${campo_email}
E o usuario inserir a senha
    Input Text    ${input_senha}    ${campo_senha}
    Capture Page Screenshot
E o usuario clicar em cadastrar
    Click Element    ${input_bnt}
Entao o sistema exibe uma mensagem
    Element Text Should Be    ${alerta_sucesso}    Usuário inserido com sucesso

** Test Cases **
Cenário 1: Cadastro com sucesso
    Dado que o usuario acesse o site seuBarriga
    E usuario clicar em cadastrar novo usuario
    Quando o usuario inserir o nome
    E o usuario inserir o email
    E o usuario inserir a senha
    E o usuario clicar em cadastrar
    Entao o sistema exibe uma mensagem


   
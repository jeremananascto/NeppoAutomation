*** Settings ***
Documentation    Ações de Login

***Variables***
${user}     jeremias.nascimento     
${senha}    Nepp@123    


*** Keywords ***
Iniciar Sessão
    New browser    chromium    False    slowMo=0:00:00

    New page    https://tm2-evl.tm2digital.com/chat/#/login

Preenchendo formulario
    [Arguments]    ${user}    ${senha}

    Wait For Elements State    css=form[name="loginForm"]    visible    5

    Fill text    css=input[name="username"]    ${user}
    Fill text    css=input[name="password"]    ${senha}
    Click        id=btnLogin


Finalizar Sessão
    Take Screenshot    fullPage=True

Validando Mensagem de Erro login
    [Arguments]    ${mensagem_esperada}

    ${element}    Set Variable    css=span[class="ng-binding"] >> text=${mensagem_esperada}    

    Wait For Elements State    ${element}    visible    5
    Get Text                   ${element}    equal      ${mensagem_esperada}   


    


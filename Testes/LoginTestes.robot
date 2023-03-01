*** Settings ***
Documentation    Teste de Login

Resource         ../Resources/Base.robot

Test Setup       Iniciar Sessão
Test Teardown    Finalizar Sessão

*** Test Cases ***
Login com sucesso
    Preenchendo formulario    ${user}   ${senha}

    Sleep   10

Incorreto password
    [Tags]    inc_pass

    Preenchendo formulario    ${user}   Neppo1234

    Validando Mensagem de Erro login      Usuário ou senha inválido.  

Incorreto username
    [Tags]      inc_user

    Preenchendo formulario    jeremias.silva   ${senha}   

    Validando Mensagem de Erro login      Usuário ou senha inválido.

Campos obrigatório  
    [Tags]  camp_obrig
    
    Preenchendo formulario    ${EMPTY}      ${EMPTY}  

    Validando Mensagem de Erro login      Usuário e senha são obrigatórios


    
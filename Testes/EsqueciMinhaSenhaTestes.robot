***Settings***
Documentation    Teste de Esqueci Minha Senha 

Resource         ../Resources/Base.robot

Test Setup       Iniciar Sessão
Test Teardown    Finalizar Sessão

*** Test Cases ***
Esqueci Minha Senha
    Preencher Campos    jeremias.nascimento   jeremias.nascimento@neppo.com.br    

    Sleep   10

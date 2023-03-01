*** Settings ***
Documentation    Teste de Dashboard

Resource         ../Resources/Base.robot

Test Setup       Iniciar Sessão
Test Teardown    Finalizar Sessão

***Test Cases***
Deve Validar a Pagina de Dashboard
    Validando Pagina Dashboard  









































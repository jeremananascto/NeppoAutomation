***Settings***
Documentation   Ações Esqueci minha Senha 

***Keywords***

Preencher Campos
    [Arguments]    ${usuario}    ${e-mail}

    Click   css=div[class="text-forgot-pass ng-binding"]

    Wait For Elements State    css=div[class="middle-inputs screen-reset-password"]    visible    5

   
    Fill text    css=input[name="reset-user"]       ${usuario}
    Fill text    css=input[type="email"]            ${e-mail}
    Click        css=input[type="button"]

    Wait For Elements State     
    ...     css=.ng-binding >> text=Um link foi enviado para o seu e-mail, favor verificar seu e-mail e a caixa de SPAM.            
    ...     visible     5        
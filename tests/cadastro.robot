*** Settings ***
Resource   ../resources/base.robot

*** Variables ***
&{user}=    name=Oséias Caleb    email=oseiascaleb@atech.com    password=123456

*** Test Cases ***
Cadastrar usuario sem username - username obrigatorio
    [Tags]    Nome em branco
    Start Session
    Cadastrar Usuario sem username     ${user}[email]    ${user}[password]
    
    ${notice}    Set Variable    css=small[class=alert-error]
    ${message}    Set Variable    Informe seu nome completo
    Wait For Elements State    ${notice}    visible    2
    Get Text    ${notice}    equal    ${message}
    Sleep    2
    Close Browser    CURRENT

Cadastrar usuario sem email - email obrigatorio
    [Tags]    E-mail em branco
    Start Session
    Cadastrar Usuario sem email    ${user}[name]    ${user}[password]
    
    ${notice}    Set Variable    css=small[class=alert-error]
    ${message}    Set Variable    Informe seu e-email
    Wait For Elements State    ${notice}    visible    2
    Get Text    ${notice}    equal    ${message}
    Sleep    2
    Close Browser    CURRENT

Cadastrar usuario sem password - password obrigatorio
    [Tags]    Senha em branco
    Start Session
    Cadastrar Usuario sem password    ${user}[name]    ${user}[email]
    
    ${notice}    Set Variable    css=small[class=alert-error]
    ${message}    Set Variable    Informe uma senha com pelo menos 6 digitos
    Wait For Elements State    ${notice}    visible    2
    Get Text    ${notice}    equal    ${message}
    Sleep    2
    Close Browser    CURRENT
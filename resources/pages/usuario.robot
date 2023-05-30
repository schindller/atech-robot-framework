*** Settings ***
Library    Browser

*** Keywords ***
Cadastrar Usuario sem username  
    [Arguments]    ${email}    ${password}
    
    Fill Text    css=input[name=email]    ${email}
    Fill Text    css=input[name=password]    ${password}
    Click    css=button[type=submit] >> text=Cadastrar

Cadastrar Usuario sem password  
    [Arguments]    ${name}    ${email}
    
    Fill Text    css=input[name=name]    ${name}
    Fill Text    css=input[name=email]    ${email}
    Click    css=button[type=submit] >> text=Cadastrar

Cadastrar Usuario sem email  
    [Arguments]    ${name}    ${password}
    
    Fill Text    css=input[name=name]    ${name}
    Fill Text    css=input[name=password]    ${password}
    Click    css=button[type=submit] >> text=Cadastrar
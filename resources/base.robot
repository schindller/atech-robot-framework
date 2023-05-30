*** Settings ***
Library    Browser
Library   libs/mongo.py
Resource  pages/usuario.robot

*** Keywords ***
Start Session
    New Browser    browser=chromium    headless=false
    New Page        http://localhost:3000/signup
    Get Text    css=form h1    equal    Faça seu cadastro
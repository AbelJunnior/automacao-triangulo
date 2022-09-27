*** Settings ***
Library    SeleniumLibrary
Library    FakerLibrary

*** Variables ***    
${Url}        http://www.vanilton.net/triangulo/#
${Browser}    chrome
${texto}      Dados os três lados de um triângulo
${v1}         V1
${v2}         V2
${v3}         V3

*** Keywords ***
Triângulo Equilátero

Dado que eu acesso o site da aplicação
    Open Browser                ${Url}    ${Browser}    
    Wait Until Page Contains    ${texto}
    Maximize Browser Window
    Click Element                ${v1}
    Click Element                ${v2}
    Click Element                ${v3}
Quando clico no botão identificar
    Click Button    Identificar
    
Então uma mensagem é exibida
    Wait Until Page Contains    Digite os valores dos vértices do triângulo para identificar o seu tipo	
    Close Browser

    

*** Test Cases ***
Cenário 1: Mensagem de alerta 
    Dado que eu acesso o site da aplicação
    Quando clico no botão identificar
    Então uma mensagem é exibida
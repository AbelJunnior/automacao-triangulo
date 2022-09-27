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

Triângulo Isósceles
Dado que eu acesso o site da aplicação
    Open Browser                ${Url}    ${Browser}
    Wait Until Page Contains    ${texto}
    Maximize Browser Window
E entro com os valores nos campos vertice 1, vertice 2, vertice 3
    ${numero}    FakerLibrary.Random Number    2
    Input Text    ${v1}    ${numero}
    Input Text    ${v2}    ${numero}
    ${numero}    FakerLibrary.Random Number    2
    Input Text    ${v3}    ${numero} 
Quando clico no botão identificar
    Click Button    Identificar
    
Então o resultado é exibido
    Wait Until Page Contains    Isósceles
    Close Browser
    

*** Test Cases ***
Cenário 4: Triângulo Isósceles
    Dado que eu acesso o site da aplicação
    E entro com os valores nos campos vertice 1, vertice 2, vertice 3
    Quando clico no botão identificar
    Então o resultado é exibido

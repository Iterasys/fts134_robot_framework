*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem

Resource    actions/confirmation.robot
Resource    actions/header.robot
Resource    actions/index.robot
Resource    actions/purchase.robot
Resource    actions/reserve.robot

*** Variables ***
${timeout}  10
${url}      https://www.blazedemo.com
${browser}  Chrome

*** Keywords ***
Abrir Navegador
    open browser   ${url}   ${browser}

Fechar Navegador
    close browser

Ler Json
    [Arguments]     ${nome_arquivo}

    ${arquivo}      get file    ${EXECDIR}/resources/fixtures/${nome_arquivo}
    ${arquivo_json} evaluate    json.loads(${arquivo})      json

    [return]        ${arquivo_json}
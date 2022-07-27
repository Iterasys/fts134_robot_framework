*** Settings ***
Documentation    Realizar compra de passagens a partir de uma lista
Library          SeleniumLibrary

Resource        ../../resources/base.robot

Test Setup      Abrir Navegador
Test Teardown   Fechar Navegador

Test Template   Selecionar Origem e Destino

*** Test Cases ***              ORIGEM      DESTINO
Passagem Paris - Buenos Aires   Paris       Buenos Aires
Passagem San Diego-Rome         San Diego   Rome
CT22 - Boston-Berlin            Boston      Berlin

*** Keywords ***
Selecionar Origem e Destino
    [Arguments] ${origem}   ${destino}
    Selecionar origem e destino do voo  ${origem}   ${destino}
    Validar o titulo de origem e destino    ${origem}   ${destino}
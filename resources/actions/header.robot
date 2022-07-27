*** Settings ***
Documentation    Mapeamento das acoes do cabecalho das paginas
Library          SeleniumLibrary
# DSL
*** Keywords ***
Clicar em Travel The World
    wait until element is enabled     link = Travel The World   30
    click link                        link = Travel The World

Clicar em Home
    wait until element is enabled     link = home   30
    click link                        link = home


*** Settings ***
Documentation    Tela do catalogo de produtos
Library          AppiumLibrary

*** Keywords ***
Selecionar o produto "${nome_produto}"
    Click Element    xpath=//android.widget.ImageView[@content-desc="${nome_produto}"]

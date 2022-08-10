*** Settings ***
Documentation    Tela do Produto
Library          AppiumLibrary

*** Keywords ***
Validar nome do produto, preco e quantidade inicial
    [Arguments]     ${nome_produto} ${preco_unitario} ${quant_inicio}
    Element Should Contain Text    id=com.saucelabs.mydemoapp.android:id/productTV  ${nome_produto}
    Element Should Contain Text    id=com.saucelabs.mydemoapp.android:id/priceTV    ${preco_unitario}
    Swipe    490    1978    511    1384
    Element Should Contain Text    id=com.saucelabs.mydemoapp.android:id/noTV       ${quant_inicio}

Aumentar a quantidade do produto para 2
    Click Element    accessibility_id=Increase item quantity

Adicionar o produto no carrinho
    Click Element    accessibility_id=Tap to add product to cart

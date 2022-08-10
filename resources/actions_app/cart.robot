*** Settings ***
Documentation    Tela do Carrinho de Compras
Library          AppiumLibrary


*** Keywords ***
Ir para o carrinho de compras
    Click Element   id=com.saucelabs.mydemoapp.android:id/cartTV

Validar informacoes do produto no carrinho
    [Arguments]    ${nome_produto}  ${preco_unitario}   ${quantidade}   ${quantidade_items} ${preco_total}
    Element Should Contain Text     id=com.saucelabs.mydemoapp.android:id/productTV     My Cart
    Element Should Contain Text     id=com.saucelabs.mydemoapp.android:id/titleTV       ${nome_produto}
    Element Should Contain Text     id=com.saucelabs.mydemoapp.android:id/priceTV       ${preco_unitario}
    Element Should Contain Text     id=com.saucelabs.mydemoapp.android:id/noTV          ${quantidade}
    Element Should Contain Text     id=com.saucelabs.mydemoapp.android:id/itemsTV       ${quantidade_items}
    Element Should Contain Text     id=com.saucelabs.mydemoapp.android:id/totalPriceTV  ${preco_total}

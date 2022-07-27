*** Settings ***
Documentation    Suite description

Resource        ..\\..\\resources\\base.robot
Resource        ..\\..\\resources\\actions\\index.robot
Resource        ..\\..\\resources\\actions\\header.robot
Resource        ..\\..\\resources\\actions\\reserve.robot
Resource        ..\\..\\resources\\actions\\purchase.robot
Resource        ..\\..\\resources\\actions\\confirmation.robot

Test Setup      base.Abrir Navegador
Test Teardown   base.Fechar Navegador

*** Test Cases ***
Compra do Primeiro Voo
    index.Selecionar origem e destino do voo
    reserve.Selecionar o primeiro voo da lista
    purchase.Preencher nome "Juca"
    purchase.Clicar no botao Purchase Flight
    confirmation.Validar o preco da passagem "555 USD"

Compra do Voo pelo Numero
    index.Selecionar origem e destino do voo
    reserve.Selecionar o voo numero "2"
    purchase.Preencher nome "Juca"
    purchase.Clicar no botao Purchase Flight
    confirmation.Validar o preco da passagem "555 USD"

Compra de Passagem para Multiplos Passageiros
    index.Selecionar origem e destino do voo
    reserve.Selecionar o voo numero "2"
    purchase.Preencher nome "Juca"
    purchase.Clicar no botao Purchase Flight
    confirmation.Validar o preco da passagem "555 USD"
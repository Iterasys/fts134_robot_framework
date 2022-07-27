*** Settings ***
Documentation    Suite description
Library          SeleniumLibrary

*** Keywords ***
Selecionar o primeiro voo da lista
    wait until element is enabled   class = btn.btn-small   30
    click button                    class = btn.btn-small

Selecionar o voo numero "${num}"
    wait until element is enabled   css = tr:nth-child(${num}).btn 30
    click button                    css = tr:nth-child(${num}).btn

Validar o titulo de origem e destino
    [Arguments] ${origem}   ${destino}
    element should contain  xpath = //h3    Flights from ${origem} to ${destino}:
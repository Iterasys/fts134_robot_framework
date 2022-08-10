*** Settings ***
Documentation   Funcoes de Iniciar e Finalizar

Library         AppiumLibrary

Resource        actions_app/cart.robot
Resource        actions_app/catalog.robot
Resource        actions_app/product.robot

*** Variables ***
${REMOTE_URL}      https://InstrutorIterasys11:90239964-f3e8-43ef-bab3-5e56b496ba6c@ondemand.us-west-1.saucelabs.com:443/wd/hub
${platformName}    Android
${appium:platformVersion}    9.0
${appium:appiumVersion}    1.22.0
${appium:deviceName}    Samsung Galaxy S9 FHD GoogleAPI Emulator
${appium:deviceOrientation}    portrait
${appium:app}    storage:filename=mda-1.0.13-15.apk
${appium:appPackage}    com.saucelabs.mydemoapp.android
${appium:appActivity}    com.saucelabs.mydemoapp.android.view.activities.SplashActivity
${appium:ensureWebviewsHavePages}       true
${appium:nativeWebScreenshot}           true
${appium:newCommandTimeout}             0
${appium:connectHardwareKeyboard}       true


*** Keywords ***
Abrir o app
    Open Application    ${REMOTE_URL}   platformName=${platformName}  appium:platformVersion=${appium:platformVersion}  appium:appiumVersion=${appium:appiumVersion}  appium:deviceName=${appium:deviceName}  appium:deviceOrientation=${appium:deviceOrientation}  appium:app=${appium:app}  appium:appPackage=${appium:appPackage}  appium:appActivity=${appium:appActivity}  appium:ensureWebviewsHavePages=${appium:ensureWebviewsHavePages}  appium:nativeWebScreenshot=${appium:nativeWebScreenshot}  appium:newCommandTimeout=${appium:newCommandTimeout}  appium:connectHardwareKeyboard=${appium:connectHardwareKeyboard}

Fechar o app
    Quit Application
    Close Application
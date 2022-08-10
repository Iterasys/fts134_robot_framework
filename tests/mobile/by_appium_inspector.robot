*** Settings ***
Library           AppiumLibrary

Test Teardown   Quit Application
Suite Teardown  Close Application

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


*** Test Cases ***
Test case name
    Open Application    ${REMOTE_URL}   platformName=${platformName}  appium:platformVersion=${appium:platformVersion}  appium:appiumVersion=${appium:appiumVersion}  appium:deviceName=${appium:deviceName}  appium:deviceOrientation=${appium:deviceOrientation}  appium:app=${appium:app}  appium:appPackage=${appium:appPackage}  appium:appActivity=${appium:appActivity}  appium:ensureWebviewsHavePages=${appium:ensureWebviewsHavePages}  appium:nativeWebScreenshot=${appium:nativeWebScreenshot}  appium:newCommandTimeout=${appium:newCommandTimeout}  appium:connectHardwareKeyboard=${appium:connectHardwareKeyboard}
    # xpath=//android.widget.ImageView[@content-desc="Sauce Lab Bolt T-Shirt"]
    Click Element    xpath=//android.widget.ImageView[@content-desc="Sauce Lab Bolt T-Shirt"]
    # id=com.saucelabs.mydemoapp.android:id/productTV
    Element Should Contain Text    id=com.saucelabs.mydemoapp.android:id/productTV  Sauce Lab Bolt T-Shirt
    # id=com.saucelabs.mydemoapp.android:id/priceTV
    Element Should Contain Text    id=com.saucelabs.mydemoapp.android:id/priceTV    $ 15.99
    Swipe    490    1978    511    1384
    # id=com.saucelabs.mydemoapp.android:id/noTV
    Element Should Contain Text    id=com.saucelabs.mydemoapp.android:id/noTV       1
    # accessibility id=Increase item quantity
    Click Element    accessibility_id=Increase item quantity
    # accessibility id=Tap to add product to cart
    Click Element    accessibility_id=Tap to add product to cart
    # Clique no icone do carrinho de compras
    Click Element   id=com.saucelabs.mydemoapp.android:id/cartTV
    # Validar se está na página do carrinho
    Element Should Contain Text     id=com.saucelabs.mydemoapp.android:id/productTV    My Cart
    # id=com.saucelabs.mydemoapp.android:id/titleTV
    Element Should Contain Text     id=com.saucelabs.mydemoapp.android:id/titleTV      Sauce Lab Bolt T-Shirt
    # id=com.saucelabs.mydemoapp.android:id/priceTV
    Element Should Contain Text     id=com.saucelabs.mydemoapp.android:id/priceTV      $ 15.99
    # id=com.saucelabs.mydemoapp.android:id/noTV
    Element Should Contain Text     id=com.saucelabs.mydemoapp.android:id/noTV         10
    # id=com.saucelabs.mydemoapp.android:id/itemsTV
    Element Should Contain Text     id=com.saucelabs.mydemoapp.android:id/itemsTV      10 Items
    # id=com.saucelabs.mydemoapp.android:id/totalPriceTV
    Element Should Contain Text     id=com.saucelabs.mydemoapp.android:id/totalPriceTV  $ 159.90


*** Settings ***
Library           AppiumLibrary

Test Teardown   Quit Application
# Suite Teardown  Close Application

*** Variables ***
${Sauce_Username}   InstrutorIterasys11
${Sauce_Access_Key} 90239964-f3e8-43ef-bab3-5e56b496ba6c
${REMOTE_URL}       http://${Sauce_Username}:${Sauce_Access_Key}@ondemand.us-west-1.saucelabs.com:80/wd/hub
${platformName}    Android
${appium:platformVersion}    9.0
${appium:appiumVersion}    1.22.0
${appium:deviceName}    Samsung Galaxy S9 FHD GoogleAPI Emulator
${appium:deviceOrientation}    portrait
${appium:app}    storage:filename=mda-1.0.13-15.apk
${appium:appPackage}    com.saucelabs.mydemoapp.android
${appium:appActivity}    com.saucelabs.mydemoapp.android.view.activities.SplashActivity
${appium:ensureWebviewsHavePages}    True
${appium:nativeWebScreenshot}    True
${appium:newCommandTimeout}    0
${appium:connectHardwareKeyboard}    True


*** Test Cases ***
Test case name
    Open Application    ${REMOTE_URL}   platformName=${platformName}  appium:platformVersion=${appium:platformVersion}  appium:appiumVersion=${appium:appiumVersion}  appium:deviceName=${appium:deviceName}  appium:deviceOrientation=${appium:deviceOrientation}  appium:app=${appium:app}  appium:appPackage=${appium:appPackage}  appium:appActivity=${appium:appActivity}  appium:ensureWebviewsHavePages=${appium:ensureWebviewsHavePages}  appium:nativeWebScreenshot=${appium:nativeWebScreenshot}  appium:newCommandTimeout=${appium:newCommandTimeout}  appium:connectHardwareKeyboard=${appium:connectHardwareKeyboard}
    # xpath=//android.widget.ImageView[@content-desc="Sauce Lab Bolt T-Shirt"]
    Click Element    xpath=//android.widget.ImageView[@content-desc="Sauce Lab Bolt T-Shirt"]
    # id=com.saucelabs.mydemoapp.android:id/productTV
    Click Element    id=com.saucelabs.mydemoapp.android:id/productTV
    # id=com.saucelabs.mydemoapp.android:id/priceTV
    Click Element    id=com.saucelabs.mydemoapp.android:id/priceTV
    Swipe    490    1978    511    1384
    # id=com.saucelabs.mydemoapp.android:id/noTV
    Click Element    id=com.saucelabs.mydemoapp.android:id/noTV
    # accessibility id=Increase item quantity
    Click Element    accessibility id=Increase item quantity
    # accessibility id=Tap to add product to cart
    Click Element    accessibility id=Tap to add product to cart
    # id=com.saucelabs.mydemoapp.android:id/cartTV
    Click Element    id=com.saucelabs.mydemoapp.android:id/cartTV
    # id=com.saucelabs.mydemoapp.android:id/productTV
    Click Element    id=com.saucelabs.mydemoapp.android:id/productTV
    # id=com.saucelabs.mydemoapp.android:id/titleTV
    Click Element    id=com.saucelabs.mydemoapp.android:id/titleTV
    # id=com.saucelabs.mydemoapp.android:id/priceTV
    Click Element    id=com.saucelabs.mydemoapp.android:id/priceTV
    # accessibility id=Displays color of selected product
    Click Element    accessibility id=Displays color of selected product
    # id=com.saucelabs.mydemoapp.android:id/noTV
    Click Element    id=com.saucelabs.mydemoapp.android:id/noTV
    # id=com.saucelabs.mydemoapp.android:id/itemsTV
    Click Element    id=com.saucelabs.mydemoapp.android:id/itemsTV
    # id=com.saucelabs.mydemoapp.android:id/totalPriceTV
    Click Element    id=com.saucelabs.mydemoapp.android:id/totalPriceTV


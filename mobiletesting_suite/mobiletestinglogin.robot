*** Settings ***
Library    AppiumLibrary    

*** Test Cases ***
TC1_VerifyApp
    Open Application    http://localhost:4723/wd/hub    
    ...    platformName=android
    ...    deviceName=redmi
    ...    app=C:\\Users\\CTEA\\eclipse-workspace4\\Mobiletesting\\app\\Amazon Shopping Search Find Ship and Save_v22.1.0.100_apkpure.com.apk
    Set Appium Timeout    30s
    Wait Until Page Contains Element    //*[@text='Skip sign in']    
    Click Element    //*[@text='Skip sign in']
    Wait Until Page Contains Element    //*[@resource-id='com.amazon.mShop.android.shopping:id/rs_search_src_text']
    Click Element    //*[@resource-id='com.amazon.mShop.android.shopping:id/rs_search_src_text']
    Wait Until Page Contains Element    //*[@resource-id='com.amazon.mShop.android.shopping:id/rs_search_src_text']
    Input Text    //*[@resource-id='com.amazon.mShop.android.shopping:id/rs_search_src_text']    redmi under 10000
   	Wait Until Page Contains Element     //*[@text='redmi under 10000 mobile']    timeout=30s
    Click Element   //*[@text='redmi under 10000 mobile']
    Wait Until Page Contains Element    //*[@text='FREE Delivery by Amazon']    
    Click Element   //*[@text='FREE Delivery by Amazon']
    Swipe By Percent    50    75    50    25    
    Click Element    //*[@test='Add to Cart']
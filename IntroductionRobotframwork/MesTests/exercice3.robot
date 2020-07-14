*** Settings ***
Library    SeleniumLibrary    


*** Test Cases ***
test login
    [Documentation]    ceci est un test de login/logout
      
    Open Browser    ${URL}    ${browser}
    Maximize Browser Window
    Input Text    //input[@id='txtUsername']    &{dataLogin}[username]                                                       # @{logins}[0]     
    Input Password   //input[@id='txtPassword']    &{dataLogin}[password]                                                    # @{logins}[1] 
    Click Button    id=btnLogin
        
    Click Element    id=welcome
    Set Browser Implicit Wait    5    
    Click Element    link=Logout 
    Log    ceci est un test excute par %{username} dans %{os} 
    Log  ceci est simple test      
    log  fin de test 
    
*** Variables ***
#variables scalaires
${URL}    https://opensource-demo.orangehrmlive.com/index.php/auth/login  
${browser}    gc  
#variables list
@{logins}    Admin    admin123
#variables dictionary
&{dataLogin}    username=Admin    password=admin123
#variables systeme %{username} %{os}

      
         
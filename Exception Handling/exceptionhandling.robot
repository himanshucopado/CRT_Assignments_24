Login-Logout   
    [tags]                      Exception
    Run Keyword                 Login
    Run Keyword And Ignore Error                            Verifytext                  Login
    Log To Console              Succcess

Login-Logout01                    
    [tags]                      Exception
    Run Keyword                 Login
    Run Keyword And Expect Error                            STARTS: QWebElementNotFoundError:                  Verifytext    Login

Login-Logout02                   
    [tags]                      Exception
    Run Keyword And Continue On Failure                     Fail                        This is a stupid example
    Log                         This keyword is executed

Exercise 13 - TRY / EXCEPT: Catch any exception
    [tags]                      Exception
    Run Keyword                 Login
    TRY
        Verifytext              Login
    EXCEPT
        Log                     Already Logged in
    END

Exercise 13 - TRY / EXCEPT: Catch an exception by exact message
    [tags]                      Exception
    Run Keyword                 Login
    TRY
        Verifytext              Login
    EXCEPT                      QWebElementNotFoundError: Unable to find element for locator Login in 30.0 sec
        Log To Console          Catches the exception
    END

Exercise 13 - TRY / EXCEPT: Capture the error message  
    [tags]                      Exception
    Run Keyword                 Login
    TRY
        Verifytext              Login
    EXCEPT                      AS                          ${error_message}
        Log To Console          ${error_message}
    END

*** Settings ***
Library                       ../12__exercise-custom-keywords-custom-libraries/Libraries/ustomLib.py
Suite Setup                     Open Browser                about:blank                 chrome
Suite Teardown                  Close All Browsers
*** Test Cases ***

Exercise 12 - Test the Custom Keyword from the Custom Library BuilderPatternAccount.
    ${random_email}     Generate Random Emails    ${8}
    Log                 ${random_email}
*** Settings ***
Library                       ../libraries/CustomLib.py
Library                       ../libraries/BuilderPatternAccount.py
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                Close All Browser Sessions

*** Test Cases ***

Exercise 12 - Test the Custom Keyword from the Custom Library
    BuilderPatternAccount.
    ${random_email}     Generate Random Emails    ${8}
    Log                 ${random_email}
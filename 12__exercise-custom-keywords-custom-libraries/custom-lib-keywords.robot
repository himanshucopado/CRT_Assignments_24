*** Settings ***
Library                       ../12__exercise-custom-keywords-custom-libraries/Libraries/ustomLib.py

*** Test Cases ***

Exercise 12 - Test the Custom Keyword from the Custom Library
    BuilderPatternAccount.
    ${random_email}     Generate Random Emails    ${8}
    Log                 ${random_email}
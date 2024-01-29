*** Settings ***
Library                         ../12__exercise-custom-keywords-custom-libraries/Libraries/ustomLib.py
# Resource                        ../12__exercise-custom-keywords-custom-libraries/common.robot
Suite Setup                    
Suite Teardown
*** Test Cases ***

Exercise 12 - Test the Custom Keyword from the Custom Library BuilderPatternAccount.
    ${random_email}     Generate Random Emails    ${8}
    Log To Console      ${random_email}
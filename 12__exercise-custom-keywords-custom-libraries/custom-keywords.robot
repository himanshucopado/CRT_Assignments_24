*** Settings ***
Resource                        ../12__exercise-custom-keywords-custom-libraries/common.robot
Library                         QWeb
Library                         DateTime
Library                         String
Library                         BuiltIn
Suite Setup                     Open Browser                about:blank                 chrome
Suite Teardown                  Close All Browsers

# In this exercise we use the same salesforce scenario built with exercise 6.

*** Test Cases ***

Exercise 12 - Custom Keywords - Step 1 Grouping
    # At this point the test data in the custom keywords are fixed.
    Appstate                    Home
    Create Lead Step 1 Grouping
    Verify Lead Step 1 Grouping
    Delete Lead Step 1 Grouping

Exercise 12 - Custom Keywords - Step 2 Replace values with arguments
    # At this point the test data in the custom keywords are variables
    Appstate                    Home
    Create Lead Step 2 Replace values with arguments        lead_status=Working                    last_name=Smith     company=Growmore         salutation=Ms.           first_name=Tina             phone=+12234567858449       title=Manager               email=tina.smith@gmail.com    website=https://www.growmore.com/    lead_source=Advertisement
    Verify Lead Step 2 Replace values with arguments        last_name=Smith    salutation=Ms.      first_name=Tina     company=Growmore         phone=+12234567858449    title=Manager               website=https://www.growmore.com/
    Delete Lead Step 2 Replace values with arguments        last_name=Smith    first_name=Tina

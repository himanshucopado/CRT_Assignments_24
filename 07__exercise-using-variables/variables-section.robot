*** Variables ***
${my_var}     my_value
@{my_list}    Apple    Banana    Orange
&{my_dict}    name=my_value1    password=my_value2

*** Test Cases ***
Exercise 7 - Variables Section
[]
    Log To Console    ${my_var}
    Log To Console    ${my_list}
    Log To Console   ${my_dict}
    FOR    ${item}    IN    @{my_list}
        Log To Console   ${item}
    END
    Log To Console  ${my_dict}[name]
    Log To Console   ${my_dict}[password]
    FOR   ${key}    ${value}    IN    &{my_dict}
        Log Many    ${key}    ${value}
    END
    My Keyword
    
    Log To Console      Suitvariable
    Log To Console      Robotvariable
    Log To Console      ProjectVariable      


*** Keywords ***
My Keyword
    Log Many    ${my_var}    ${my_list}    ${my_dict}
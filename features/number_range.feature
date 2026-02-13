Feature: Tartomány ellenőrzése

Scenario: Tartományon belül
    Given the number is 50
    When I check the number if it is between 0 and 100
    Then the result should be "In range"

Scenario: Tartományon kívül
    Given the number is -5
    When I check the number if it is between 0 and 100
    Then the result should be "Not in range"

Scenario: Tartományon kívül
    Given the number is 150
    When I check the number if it is between 0 and 100
    Then the result should be "Not in range"

Scenario Outline: Szám ellenőrzése (Outline)
    Given the number is <number>
    When I check the number if it is between <min> and <max>
    Then the result should be "<result>"

    Examples:
        | number    |min|max| result   |
        | 4         |0|100| In range |
        | -4        |0|100| Not in range |
        |150        |0|100| Not in range|
        |0          |0|100| On limit|
        |100        |0|100| On limit|
        |
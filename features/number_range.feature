Feature: Tartomány ellenőrzése

Scenario Outline: Szám ellenőrzése (Outline)
    Given the number is <number>
    When I check the number if it is between <min> and <max>
    Then the result should be "<result>"

    Examples:
        | number    |min|max| result   |
        | 4         |0|100| True |
        | -4        |0|100| False |
        |150        |0|100| False|
        |0          |0|100| True|
        |100        |0|100| True|
        |3.5        |0|100| True|
        |-10        |-100|-50| False|
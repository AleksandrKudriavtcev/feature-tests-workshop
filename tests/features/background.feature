Feature: Background
    Background:
        Given a cucumber was ordered
        And the cucumber was delivered

    Scenario: Kiran eats
        When Kiran eats 1 cucumbers
        Then Alex should have 0 cucumbers

    Scenario: Rotten cucumber
        When the cucumber is getting rotten
        Then Gui throws the cucumber away
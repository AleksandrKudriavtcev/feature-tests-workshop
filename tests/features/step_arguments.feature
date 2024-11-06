@step_arguments
Feature: Step arguments
    Scenario: Eating cucumbers
        Given Jens has 5 cucumbers
        When Kiran eats 3 cucumbers
        And Gui eats 2 cucumbers
        Then Alex should have 0 cucumbers

    @yummy
    Scenario: Cooking dinner
        Given Jens is cooking a dinner with:
            cucumbers
            eggs
            potatoes
        Then the dinner has cucumbers, eggs, potatoes
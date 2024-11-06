@scenario_outlines
Feature: Scenario outlines
    Scenario Outline: Cucumber dinners
        Given Jens has <start> cucumbers
        When Gui eats <eat> cucumbers
        Then Alex should have <left> cucumbers

        Examples:
            | start | eat | left |
            | 12    | 5   | 7    |
            | 20    | 5   | 15   |
            | 10    | 5   | 5    |

# Scenario Outline: Vegetable dinners
#     Given Jens has <start> <vegetable>
#     When Gui eats <eat> <vegetable>
#     Then Alex should have <left> <vegetable>

#     Examples:
#     | start | eat | left | vegetable |
#     |  12   |  5  |  7   | cucumber  |
#     |  20   |  5  | 15   | tomato    |
#     |  10   |  5  |  5   | potato    |
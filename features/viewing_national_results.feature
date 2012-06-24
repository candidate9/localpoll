Feature: Viewing national poll results

  Scenario: Looking up national poll results from the homepage
    Given I am on the homepage
    When I follow the link to the national poll results
    Then I should see a list of parties followed by their poll results

  Scenario: Looking up national poll results from a constituency page
    Given I am on a constituency page
    When I follow the link to the national poll results
    Then I should see a list of parties followed by their poll results
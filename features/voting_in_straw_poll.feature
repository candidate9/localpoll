Feature: Voting in the straw poll

  Scenario: Voting from local constituency page
    Given I am on my local constituency page
    And I see the local candidates and then decide to take the straw poll
    When I select a candidate to vote for
    Then I should see the results of the poll for my constituency
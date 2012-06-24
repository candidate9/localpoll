Feature: Looking up my constituency using my postcode

  Scenario: Successfully looking up constituency
    Given I am on the homepage
    When I search for my constituency using my postcode
    Then I should see my local constituency and the candidates
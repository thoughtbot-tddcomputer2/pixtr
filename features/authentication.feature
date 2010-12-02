Feature: Visitors cannot create galleries
  As a visitor
  I should not be able to create a gallery
  
  Scenario: Unauthenticated
    Given I am signed out
    When I go to the home page
    Then I should not see "Add Gallery"
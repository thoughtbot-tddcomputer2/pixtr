Feature: Display Galleries
  As a photographer
  I want to view my galleries
  
  Scenario: Viewing my galleries
    Given I have signed in with "bsmith@noemail.com/password"
    And the following galleries exist:
      | title     | user                     |
      | Gallery 1 | email:bsmith@noemail.com |
      | Gallery 2 | email:bsmith@noemail.com |
      | Gallery 3 | email:jdoe@noemail.com   |
    And I am on the home page
    Then I should see "Gallery 1"
    And I should see "Gallery 2"
    And I should not see "Gallery 3"
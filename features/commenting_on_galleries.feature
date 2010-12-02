Feature: Commenting on galleries
  As a user
  I want to be able to comment on galleries
  So that I can provide feedback to the photographers
  
  Scenario: Signed in user commenting
    Given I have signed in with "bsmith@noemail.com/password"
    And the following galleries:
      | title             | photographer       |
      | Birthday Party    | jdoe@noemail.com   |
    And I am on the galleries page
    When I follow "Birthday Party"
    And I fill in "Comment" with "This is an awesome gallery!"
    And I press "Add Comment"
    Then I should see "Comment created!"
    And I should see "This is an awesome gallery"
    
  Scenario: Signed in user invalid commenting
    Given I have signed in with "bsmith@noemail.com/password"
    And the following galleries:
      | title             | photographer       |
      | Birthday Party    | jdoe@noemail.com   |
    And I am on the galleries page
    When I follow "Birthday Party"
    And I fill in "Comment" with ""
    And I press "Add Comment"
    Then I should see errors
    
  Scenario: Visitor commenting
    Given I am signed out
    And the following galleries:
      | title             | photographer       |
      | Birthday Party    | jdoe@noemail.com   |
    And I am on the galleries page
    When I follow "Birthday Party"
    Then I should not see "Comment"
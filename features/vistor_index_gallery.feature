Feature: Showing gallery
  As a visitor
  I want to be able to view all photographer's galleries
  
  Scenario:
    Given the following galleries:
      | title             | photographer       |
      | Birthday Party    | bsmith@noemail.com |
      | Vacation Bloopers | jdoe@noemail.com   |
    When I go to the home page
    Then I should see "Birthday Party" gallery by "bsmith@noemail.com"
    And I should see "Vacation Bloopers" gallery by "jdoe@noemail.com"
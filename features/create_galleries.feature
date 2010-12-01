Feature: Create Galleries
  As a photographer
  I want to create a gallery
  So that I have a place to upload and display my pictures
  
  Scenario: Creating a valid gallery
    Given I have signed in with "bsmith@noemail.com/password"
    And I am on the home page
    When I follow "Add Gallery"
    And I fill in "Title" with "Gallery 1"
    And I press "Create Gallery"
    Then I should be on Gallery 1's show page
    And I should see "Gallery created!"
    And I should see "Gallery 1"

  Scenario: Creating an invalid gallery
    Given I have signed in with "bsmith@noemail.com/password"
    And I am on the home page
    When I follow "Add Gallery"
    And I fill in "Title" with ""
    And I press "Create Gallery"
    And I should see errors
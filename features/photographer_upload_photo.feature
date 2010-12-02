Feature: Photographer Uploading Photo
  As a photographer
  I want to be able to upload images to my galleries
  
  Scenario: Photographer uploads valid image
    Given I have signed in with "bsmith@noemail.com/password"
    And the following galleries exist:
      | title     | user                     |
      | Gallery 1 | email:bsmith@noemail.com |
      | Gallery 2 | email:bsmith@noemail.com |
    And I am on the "Gallery 1"'s show page
    When I fill in "Title" with "Image 1" 
    And I attach the file "features/support/fixtures/image1.jpg" to "Photo"
    And I press "Upload Image"
    Then I should see "Image uploaded successfully"
    And I should see "Image 1"
    And I should be on the "Gallery 1"'s show page
    
  Scenario: Photographer uploads invalid image
    Given I have signed in with "bsmith@noemail.com/password"
    And the following galleries exist:
      | title     | user                     |
      | Gallery 1 | email:bsmith@noemail.com |
    And I am on the "Gallery 1"'s show page
    When I fill in "Title" with "" 
    And I attach the file "features/support/fixtures/image1.jpg" to "Photo"
    And I press "Upload Image"
    Then I should see errors
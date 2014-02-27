@wip
Feature: Create a movie entry
  As a movie tracker
  In order to create a library of my movies
  I want to be able to enter a new movie entry into my movie library

  # Scenario: Creating a movie entry with a title succeeds
  #   When I sign up
  #   When I go to the index page
  #   Then I should see "Add a Movie"
  #   Then I click "Add a Movie"
  #   And I should go to the add movie entry page
  #   And show me the page
  #   Then I should see "Movie Title:"
  #   When I fill in "Movie Title:" with "Up"
  #   And I press "Save"
  #   Then I should go to the index page
  #   And I should see: "Movie added to your index"
  #   And I should see "Up" within my index

  Scenario: Creating a movie entry alone succeeds
    When I sign up
    When I go to the index page
    Then I should see "Add a Movie"
    Then I click "Add a Movie"
    And I should go to the add movie entry page
    Then I check "Seen"
    Then I check "Own"
    Then I check "Wishlist See"
    Then I check "Wishlist Own"
    Then I fill in "My Rating:" with "26"
    Then I fill in "My Comments:" with "This movie sucks"
    And I press "Save"
    And there should be a movie entry that is seen that is owned that is wishlist see that is wishlist own with a user rating of "26" and user comments of "This movie sucks" in the database
    Then I should see: "Your movie entry has been saved"
    Then I go to the index page
    And I should see a movie entry with a user rating of "26" within the library
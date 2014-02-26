@wip
Feature: Create a movie entry
  As a movie tracker
  In order to create a library of my movies
  I want to be able to enter a new movie entry into my movie library

  # Scenario: Creating a movie entry with a title succeeds
  #   When I sign up
  #   When I go to the library page
  #   Then I should see "Add a Movie"
  #   Then I click "Add a Movie"
  #   And I should go to the add movie entry page
  #   And show me the page
  #   Then I should see "Movie Title:"
  #   When I fill in "Movie Title:" with "Up"
  #   And I press "Save"
  #   Then I should go to the library page
  #   And I should see: "Movie added to your library"
  #   And I should see "Up" within my library

  Scenario: Creating a movie entry alone succeeds
    When I sign up
    When I go to the library page
    Then I should see "Add a Movie"
    Then I click "Add a Movie"
    And I should go to the add movie entry page
    # And show me the page
    Then I check "Seen"
    # Then I check "Own"
    # Then I check "Wishlist See"
    # Then I check "Wishlist Own"
    # Then I fill in "My Rating:" with "76"
    # Then I fill in "My Comments:" with "This movie sucks"
    And I press "Save"
    Then I should see: "Your movie entry has been saved"
    And there should be a movie entry that is seen in the database
    Then I go to the library page
    And I should see: "Movie added to your library"
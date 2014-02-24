@wip
Feature: Create a movie entry
  As a movie tracker
  In order to create a library of my movies
  I want to be able to enter a new movie into my movie library

  Scenario: Creating a movie entry with a title succeeds
    When I go to the library page
    # Then I should see "Add a Movie"
    Then I press "Add a Movie"
    And I should go to the add movie page
    And show me the page
    Then I should see "Movie Title:"
    When I fill in "Movie Title:" with "Up"
    And I press "Save"
    Then I should go to the library page
    And I should see: "Movie added to your library"
    And I should see "Up" within my library
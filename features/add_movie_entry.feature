Feature: Create a movie entry
  As a movie tracker
  In order to create a library of my movies
  I want to be able to enter a new movie entry into my movie library

  Scenario: Not being logged in
    When I go to the home page
    Then I should see "Sign in or Sign up to open your movie library"
    And I should not see "Add a Movie"

# @fail
#   Scenario: Trying to create a blank movie entry fails
#     Given I'm signed in as "amy"
#     When I go to the index page
#     Then I should see "Add a Movie"
#     Then I click "Add a Movie"
#     And I should go to the add movie entry page
#     And I press "Save"
#     Then I should see "Your movie entry has not been saved"

  Scenario: Creating a movie title succeeds
    Given I'm signed in as "amy"
    When I go to the index page
    Then I should see "Add a Movie"
    Then I click "Add a Movie"
    And I should go to the add movie entry page
    Then I fill in "Title" with "uP"
    And I press "Save"
    And there should be a movie entry with the title "Up" in the database
    Then I should see: "Your movie entry has been saved"
    Then I go to the index page
    Then I should see "amy"
    And I should see a movie entry with a title of "Up" within the library
    And I should see a movie entry with a user rating of "" within the library

  Scenario: Creating a movie entry fully populated succeeds
    Given I'm signed in as "amy"
    When I go to the index page
    Then I should see "Add a Movie"
    Then I click "Add a Movie"
    And I should go to the add movie entry page
    Then I fill in "Title" with "it's a wonderful life"
    Then I check "Seen"
    Then I check "Own"
    Then I check "Wishlist See"
    Then I check "Wishlist Own"
    Then I fill in "My Rating:" with "85"
    Then I fill in "My Comments:" with "Classic"
    And I press "Save"
    And there should be a movie entry with a title of "It's a Wonderful Life" in the database
    And there should be a movie entry with seen "1" in the database
    And there should be a movie entry with owned "1" in the database
    And there should be a movie entry with wishlist see "1" in the database
    And there should be a movie entry with wishlist own "1" in the database
    And there should be a movie entry with a user rating of "85" in the database
    And there should be a movie entry with a user comments of "Classic" in the database
    Then I should see: "Your movie entry has been saved"
    Then I go to the index page
    Then I should see "amy"
    And I should see a movie entry with a title of "It's a Wonderful Life" within the library
    And I should see a movie entry with a user rating of "85" within the library

  Scenario: Creating a movie unpopulated succeeds
    Given I'm signed in as "amy"
    When I go to the index page
    Then I should see "Add a Movie"
    Then I click "Add a Movie"
    And I should go to the add movie entry page
    Then I fill in "Title" with "american hustle"
    And I press "Save"
    And there should be a movie entry with a title of "American Hustle" in the database
    And there should be a movie entry with seen "0" in the database
    And there should be a movie entry with owned "0" in the database
    And there should be a movie entry with wishlist see "0" in the database
    And there should be a movie entry with wishlist own "0" in the database
    And there should be a movie entry with a user rating of "" in the database
    And there should be a movie entry with a user comments of "" in the database
    Then I should see: "Your movie entry has been saved"
    Then I go to the index page
    Then I should see "amy"
    And I should see a movie entry with a title of "American Hustle" within the library
    And I should see a movie entry with a user rating of "" within the library
@edit_me
Feature: Edit a movie entry
  As a movie tracker
  In order update a movie entry in my library
  I want to be able to edit an existing movie entry into my movie library

  Scenario: Update a movie entry
    Given I'm signed in as "amy"
    And the movie "Up"
    And the following movie entries
      | movie | user | seen | own  | wishlist_see | wishlist_own | user_rating | user_comments |
      | Up    | amy  | true | true | true         | true         | 90          | It's good     |

    When I go to the index page
    Then I should see "Up"
    Then I follow "Edit"
    Then I should see "Edit Movie"
    Then I fill in "Title" with "gravity"
    Then I uncheck "Own"
    Then I uncheck "Wishlist See"
    Then I uncheck "Wishlist Own"
    Then I fill in "My Rating:" with "78"
    Then I fill in "My Comments:" with "Suspend disbelief"
    And I press "Save"
    And there should be a movie entry with a title of "Gravity" in the database
    And there should be a movie entry with seen "1" in the database
    And there should be a movie entry with owned "0" in the database
    And there should be a movie entry with wishlist see "0" in the database
    And there should be a movie entry with wishlist own "0" in the database
    And there should be a movie entry with a user rating of "78" in the database
    And there should be a movie entry with a user comments of "Suspend disbelief" in the database
    Then I should see: "Your update has been saved"
    Then I go to the index page
    Then I should see "amy"
    And I should see a movie entry with a title of "Gravity" within the library
    And I should see a movie entry with a user rating of "78" within the library
@delete
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
    Then I press "Delete"
    Then I should see: "Your movie has been deleted"
    Then I should see "amy"
    And I should not see a movie entry with a title of "Up" within the library
    And I should not see a movie entry with a user rating of "90" within the library


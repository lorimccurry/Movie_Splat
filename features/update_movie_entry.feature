@edit_me
Feature: Edit a movie entry
  As a movie tracker
  In order update a movie entry in my library
  I want to be able to edit an existing movie entry into my movie library

  Scenario: Update a movie entry
    Given I'm signed in as "amy"
    And the movie "Up"
    And the following movie entry:
      | movie         | Up            |
      | user          | amy           |
      | seen          | 1             |
      | own           | 1             |
      | wishlist_see  | 1             |
      | wishlist_own  | 1             |
      | user_rating   | 89            |
      | user_comments | Ugly face cry |

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
    And there should be a movie entry with a title of "Gravity" that isn't seen that isn't owned that isn't wishlist see that isn't wishlist own with a user rating of "78" and user comments of "Suspend disbelief" in the database
    Then I should see: "Your update has been saved"
    Then I go to the index page
    Then I should see "amy"
    And I should see a movie entry with a title of "Gravity" and a user rating of "78" within the library

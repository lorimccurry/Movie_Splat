@edit_me
Feature: Edit a movie entry
  As a movie tracker
  In order update a movie entry in my library
  I want to be able to edit an existing movie entry into my movie library

  Scenario: Update a movie entry
    Given I'm signed in as "amy"
    Given there should be a movie entry that is seen that is owned that is wishlist see that is wishlist own with a user rating of "26" and user comments of "This movie sucks" in the database
    When I go to the index page
    Then I should see "Edit" within the id movie_entry_id???
    Then I click "Edit" within the id movie_entry_id???
    And I should go to the "Edit Movie" page
    And I see a movie entry that is seen that is owned that is wishlist see that is wishlist own with a user rating of "26" and user comments of "This movie sucks"
    Then I uncheck "Seen"
    Then I uncheck "Own"
    Then I uncheck "Wishlist See"
    Then I uncheck "Wishlist Own"
    Then I fill in "My Rating:" with ""
    Then I fill in "My Comments:" with ""
    And I press "Save"
    And there should be a movie entry that isn't seen that isn't owned that isn't wishlist see that isn't wishlist own with a user rating of "0" and user comments of "" in the database
    Then I should see: "Your update has been saved"
    Then I go to the index page
    Then I should see "amy"
    And I should see a movie entry with a user rating of "none" within the library




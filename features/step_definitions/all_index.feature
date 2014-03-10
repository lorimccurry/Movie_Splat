@all
Feature: All index page filter
  As a movie tracker
  In order to return to my whole library
  I want to be able to remove all filters from my library

  Scenario: Filter all movies
    Given I'm signed in as "amy"
    And the movies
      | title           |
      | Gravity         |
      | American Hustle |
      | Up              |

    And the following movie entries
      | movie           | user | seen  | own   | wishlist_see | wishlist_own | user_rating | user_comments |
      | Up              | amy  | true  | true  | true         | true         | 90          | It's good     |
      | Gravity         | amy  | false | false | true         | false        | null        | null          |
      | American Hustle | amy  | true  | false | false        | true         | 88          | hustle on     |

    When I go to the index page
    Then I follow "All Movies"
    And I should see "American Hustle"
    Then I should see "Gravity"
    Then I should see "Up"


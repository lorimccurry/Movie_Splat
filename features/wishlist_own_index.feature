@wish_own
Feature: Wishlist own index page filter
  As a movie tracker
  In order to view a list of the movies I want to own
  I want to be able to filter my movie library based on movies I've marked wishlist own

  Scenario: Filter wishlist own movies
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
    Then I follow "Wishlist Own"
    And I should see "American Hustle"
    Then I should see "Up"
    And I should not see "Gravity"


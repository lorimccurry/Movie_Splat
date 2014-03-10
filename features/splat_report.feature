@splat
Feature: User splat report
  As a movie rater
  In order to see if my movie taste sucks
  I want to be able to see my ratings compared to rotten tomatoes critic ratings

  Scenario: Run Splat Report
    Given I'm signed in as "amy"
    And the movies
      | title           | tomato_meter |
      | Gravity         | 97           |
      | American Hustle | 93           |
      | Up              | 98           |

    And the following movie entries
      | movie           | user | seen | own   | wishlist_see | wishlist_own | user_rating | user_comments     |
      | Up              | amy  | true | true  | true         | true         | 90          | It's good         |
      | Gravity         | amy  | true | false | false        | false        | 77          | suspend disbelief |
      | American Hustle | amy  | true | false | true         | true         | 88          | hustle on         |

    When I go to the index page
    Then I follow "Splat mE"
    Then I visit the splat report page
    Then I should see "Splat reporT"
    Then I should see "Title"
    Then I should see "My Rating"
    Then I should see "Critic Rating"
    Then I should see "Rating Difference"
    Then I should see "American Hustle"
    Then I should see "Gravity"
    Then I should see "Up"
    Then I should see "88"
    Then I should see "77"
    Then I should see "90"
    Then I should see "93"
    Then I should see "97"
    Then I should see "98"
    Then I should see "5"
    Then I should see "20"
    Then I should see "8"
    Then I should see "Average Totals:"
    Then I should see "85"
    Then I should see "96"
    Then I should see "11"
    Then I should see "Fresh! Quit your day job and move to Hollywood. Your average critic rating difference is 11."
    Then I click "My Library"
    Then I go to the index page
    Then I should see "amy"



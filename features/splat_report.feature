@splat
Feature: User splat report
  As a movie rater
  In order to see if my movie taste sucks
  I want to be able to see my ratings compared to rotten tomatoes critic ratings

  Scenario: Run Good Splat Report
    Given I'm signed in as "amy"
    And the movies
      | title           | tomato_meter |
      | Up              | 98           |
      | Gravity         | 97           |
      | American Hustle | 93           |

    And the following movie entries
      | movie           | user | seen | own   | wishlist_see | wishlist_own | user_rating | user_comments     |
      | Up              | amy  | true | true  | true         | true         | 90          | It's good         |
      | Gravity         | amy  | true | false | false        | false        | null        | suspend disbelief |
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
    Then I should not see "Gravity"
    Then I should see "Up"
    Then I should see "88"
    Then I should not see "77"
    Then I should see "90"
    Then I should see "93"
    Then I should not see "97"
    Then I should see "98"
    Then I should see "5"
    Then I should not see "20"
    Then I should see "8"
    Then I should see "Average Totals:"
    Then I should see "89"
    Then I should see "95"
    Then I should see "6"
    Then I should see "Fresh! Quit your day job and move to Hollywood. Your average critic rating difference is 6."
    Then I click "My Movies"
    Then I go to the index page
    Then I should see "amy"

  Scenario: Run Middle Splat Report
    Given I'm signed in as "amy"
    And the movies
      | title           | tomato_meter |
      | Up              | 98           |
      | Gravity         | 97           |
      | American Hustle | 93           |

    And the following movie entries
      | movie           | user | seen | own   | wishlist_see | wishlist_own | user_rating | user_comments     |
      | Up              | amy  | true | true  | true         | true         | 78          | It's good         |
      | Gravity         | amy  | true | false | false        | false        | null        | suspend disbelief |
      | American Hustle | amy  | true | false | true         | true         | 63          | hustle on         |

    When I go to the index page
    Then I follow "Splat mE"
    Then I visit the splat report page
    Then I should see "Splat reporT"
    Then I should see "Title"
    Then I should see "My Rating"
    Then I should see "Critic Rating"
    Then I should see "Rating Difference"
    Then I should see "American Hustle"
    Then I should not see "Gravity"
    Then I should see "Up"
    Then I should see "78"
    Then I should see "98"
    Then I should see "20"
    Then I should see "63"
    Then I should see "93"
    Then I should see "30"
    Then I should see "Average Totals:"
    Then I should see "70"
    Then I should see "95"
    Then I should see "25"
    Then I should see "Ripening! Eat more popcorn. Your average critic rating difference is 25."
    Then I click "My Movies"
    Then I go to the index page
    Then I should see "amy"

  Scenario: Run Bad Splat Report
    Given I'm signed in as "amy"
    And the movies
      | title           | tomato_meter |
      | Up              | 98           |
      | Gravity         | 97           |
      | American Hustle | 93           |

    And the following movie entries
      | movie           | user | seen | own   | wishlist_see | wishlist_own | user_rating | user_comments     |
      | Up              | amy  | true | true  | true         | true         | 48          | It's good         |
      | Gravity         | amy  | true | false | false        | false        | null        | suspend disbelief |
      | American Hustle | amy  | true | false | true         | true         | 43          | hustle on         |

    When I go to the index page
    Then I follow "Splat mE"
    Then I visit the splat report page
    Then I should see "Splat reporT"
    Then I should see "Title"
    Then I should see "My Rating"
    Then I should see "Critic Rating"
    Then I should see "Rating Difference"
    Then I should see "American Hustle"
    Then I should not see "Gravity"
    Then I should see "Up"
    Then I should see "48"
    Then I should see "98"
    Then I should see "50"
    Then I should see "43"
    Then I should see "93"
    Then I should see "50"
    Then I should see "Average Totals:"
    Then I should see "45"
    Then I should see "95"
    Then I should see "50"
    Then I should see "Splat! Your taste sucks. Your average critic rating difference is 50."
    Then I click "My Movies"
    Then I go to the index page
    Then I should see "amy"
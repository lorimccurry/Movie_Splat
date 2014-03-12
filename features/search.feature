@search
Feature: Search movie titles
  As a movie tracker
  In order to find specific movies
  I want to be able to search my movies by title

  Scenario: Search movies in library
    Given I'm signed in as "amy"
    And the movies
      | title           | year | rated | tomato_meter | tomato_image | poster                                                                                         |
      | American Hustle | 2013 | R     | 93           | fresh        | http://ia.media-imdb.com/images/M/MV5BNjkxMTc0MDc4N15BMl5BanBnXkFtZTgwODUyNTI1MDE@._V1_SX300.jpg |
      | Gravity         | 2013 | PG-13 | 97           | rotten       | http://ia.media-imdb.com/images/M/MV5BNjE5MzYwMzYxMF5BMl5BanBnXkFtZTcwOTk4MTk0OQ@@._V1_SX300.jpg |
      | Up              | 2009 | PG    | 98           | certified    | http://ia.media-imdb.com/images/M/MV5BMTk3NDE2NzI4NF5BMl5BanBnXkFtZTgwNzE1MzEyMTE@._V1_SX300.jpg |

    And the following movie entries
      | movie           | user | seen | own   | wishlist_see | wishlist_own | user_rating | user_comments     |
      | Up              | amy  | true | true  | true         | true         | 90          | It's good         |
      | Gravity         | amy  | true | false | false        | false        | 77          | suspend disbelief |
      | American Hustle | amy  | true | false | true         | true         | 88          | hustle on         |

    When I go to the index page
    And I fill in the search input with "Hustle"
    And I press "Search by Title"
    Then I should see "American Hustle"
    Then I should see "2013"
    Then I should see "88"
    Then I should see "fresh"
    Then I should view the image "http://ia.media-imdb.com/images/M/MV5BNjkxMTc0MDc4N15BMl5BanBnXkFtZTgwODUyNTI1MDE@._V1_SX300.jpg"
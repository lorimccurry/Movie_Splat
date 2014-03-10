@index
Feature: Index page
  As a movie tracker
  In order to have a better experience on my library page
  I want to be able to see additional movie attributes, etc on my index/library page

  Scenario: Beef up index page
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
    Then I should see "My Movies"
    Then I should see "American Hustle"
    Then I should see "Gravity"
    Then I should see "Up"
    Then I should see "2013"
    Then I should see "2013"
    Then I should see "2009"
    Then I should see "88"
    Then I should see "77"
    Then I should see "90"
    Then I should see "fresh"
    Then I should see "rotten"
    Then I should see "certified"
    Then I should view the image "http://ia.media-imdb.com/images/M/MV5BNjkxMTc0MDc4N15BMl5BanBnXkFtZTgwODUyNTI1MDE@._V1_SX300.jpg"
    Then I should view the image "http://ia.media-imdb.com/images/M/MV5BNjE5MzYwMzYxMF5BMl5BanBnXkFtZTcwOTk4MTk0OQ@@._V1_SX300.jpg"
    Then I should view the image "http://ia.media-imdb.com/images/M/MV5BMTk3NDE2NzI4NF5BMl5BanBnXkFtZTgwNzE1MzEyMTE@._V1_SX300.jpg"
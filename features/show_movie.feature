@view_me
Feature: View a movie entry
  As a movie tracker
  In order see more detail on a movie in my library
  I want to be able to view an existing movie entry show page from my movie library

  Scenario: View a movie entry
    Given I'm signed in as "amy"
    And the movie "Up"
    And the following movie entries
      | movie | user | seen | own  | wishlist_see | wishlist_own | user_rating | user_comments |
      | Up    | amy  | true | true | true         | true         | 90          | It's good     |

    When I go to the index page
    Then I should see "View"
    Then I follow "View"
    Then I should see "Up"
    Then I should view the image "http://ia.media-imdb.com/images/M/MV5BMTk3NDE2NzI4NF5BMl5BanBnXkFtZTgwNzE1MzEyMTE@._V1_SX300.jpg"
    Then I should see "2009"
    Then I should see "PG"
    Then I should see "96 min"
    Then I should see "Theater Release:"
    Then I should see "29 May 2009"
    Then I should see "DVD Release:"
    Then I should see "10 Nov 2009"
    Then I should see "Splat Classification:"
    Then I should see "certified"
    Then I should see "Tomato Critic Meter:"
    Then I should see "98"
    Then I should see "Tomato Audience Meter:"
    Then I should see "89"
    Then I should see "My Rating:"
    Then I should see "90"
    Then I should see "Actors:"
    Then I should see "Edward Asner, Christopher Plummer, Jordan Nagai, Bob Peterson"
    Then I should see "By tying thousands of balloons to his home, 78-year-old Carl sets out to fulfill his lifelong dream to see the wilds of South America. Russell, a wilderness explorer 70 years younger, inadvertently becomes a stowaway."
    Then I should see "My Comments:"
    Then I should see "It's good"
    Then I click "My Library"
    Then I go to the index page
    Then I should see "amy"
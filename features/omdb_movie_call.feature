@omdb
Feature: API call to OMDB for movie info
  As a movie tracker
  In order to have awesome movie information
  I want to be able to pull omdb movie and rotten tomatoes information on my movies

  Scenario: Inputting a movie title prints movie information
    Given I'm signed in as "amy"
    When I go to the index page
    Then I should see "Add a Movie"
    Then I click "Add a Movie"
    And I should go to the add movie entry page
    Then I fill in "Title" with "uP"
    And I press "Save" for the movie "Up"
    And there should be a movie with the "title" "Up" in the database
    And there should be a movie with the "year" "2009" in the database
    And there should be a movie with the "rated" "PG" in the database
    And there should be a movie with the "released" "29 May 2009" in the database
    And there should be a movie with the "runtime" "96 min" in the database
    And there should be a movie with the "genre" "Animation, Adventure, Drama" in the database
    And there should be a movie with the "director" "Pete Docter, Bob Peterson" in the database
    And there should be a movie with the "writer" "Pete Docter (story), Bob Peterson (story), Thomas McCarthy (story), Bob Peterson (screenplay), Pete Docter (screenplay)" in the database
    And there should be a movie with the "actors" "Edward Asner, Christopher Plummer, Jordan Nagai, Bob Peterson" in the database
    And there should be a movie with the "plot" "By tying thousands of balloons to his home, 78-year-old Carl sets out to fulfill his lifelong dream to see the wilds of South America. Russell, a wilderness explorer 70 years younger, inadvertently becomes a stowaway." in the database
    And there should be a movie with the "poster" "http://ia.media-imdb.com/images/M/MV5BMTk3NDE2NzI4NF5BMl5BanBnXkFtZTgwNzE1MzEyMTE@._V1_SX300.jpg" in the database
    And there should be a movie with the "tomato_meter" "98" in the database
    And there should be a movie with the "tomato_image" "certified" in the database
    And there should be a movie with the "tomato_user_meter" "89" in the database
    And there should be a movie with the "dvd" "10 Nov 2009" in the database
    And there should be a movie with the "box_office" "$293.0M" in the database
    And there should be a movie with the "production" "Walt Disney Pictures" in the database
    And there should be a movie with the "tomato_reviews" "278" in the database
    And there should be a movie with the "tomato_fresh" "273" in the database
    And there should be a movie with the "tomato_rotten" "5" in the database
    And there should be a movie with the "tomato_user_reviews" "1,190,300" in the database
    Then I should see: "Your movie entry has been saved"
    Then I go to the index page
    Then I should see "amy"
    And I should see a movie entry with a title of "Up" within the library
    And I should see a movie entry with a user rating of "" within the library
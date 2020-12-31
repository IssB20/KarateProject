Feature: Searching Movie from open movie DB

  Background:
    * url 'http://www.omdbapi.com/'
    # http://www.omdbapi.com/?t=John Wick&apiKey=5b5d0fe8

  Scenario:
    Given param apiKey = '5b5d0fe8'
    And param t = 'Wonder Woman 1984'
    When method get
    Then status 200
    # assert 3-5 fields below here
    * match response.Title == 'Wonder Woman 1984'
    * match response.Year == '2020'
    * match response.Runtime == '151 min'
    * match response.Rated == 'PG-13'
    * match response.Director == 'Patty Jenkins'
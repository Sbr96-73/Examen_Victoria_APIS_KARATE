Feature: Otener el token

Background:precondiciones
  * url 'https://bensg.com/test-qalab/' 

  @token
  Scenario: se obtiene el token
    Given path '/login/token.php'
    And param moodlewsrestformat = 'json'
    And param username = 'st30001'
    And param password = 'Password2!'
    And param role = 'student'
    And param service = 'moodle_mobile_app'
    When method get
    Then status 200
    * print response
    * def token = response.token
    
    

  
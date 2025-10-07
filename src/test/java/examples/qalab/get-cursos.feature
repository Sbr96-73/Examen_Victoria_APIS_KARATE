Feature: Obtencion de cursos

  Background: Precondicion
    * url baseUrlQa
    * call read('classpath:examples/qalab/get-token.feature@token')

    @getenrol
  Scenario: Obetner user enrol
      Given path 'webservice/rest/server.php'
      And param wstoken = token
      And param wsfunction = 'core_enrol_get_users_courses'
      And param moodlewsrestformat = 'json'
      And param userid = 2
      When method get
      Then status 200
      * print response

       @getcurso
  Scenario: Obetner user enrol
      Given path 'webservice/rest/server.php'
      And param wstoken = token
      And param wsfunction = 'core_course_get_contents'
      And param moodlewsrestformat = 'json'
      And param courseid = 3
      When method get
      Then status 200
      * print response




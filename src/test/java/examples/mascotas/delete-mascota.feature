Feature: Eliminar

  Background: precondiciones
    * call read('classpath:examples/mascotas/post-mascotas.feature@crear')
    * url baseUrl

  @consultar @test
  Scenario: Se crea la mascota llamada boby
    Given path 'pet/',idPet
    And header Content-Type = 'application/json'
    And header User-Agent = 'PostmanRuntime/7.45.0'
    When method get
    Then status 200
    And print response

  @eliminar @test
  Scenario: Se elimina la mascota
    * call read('classpath:examples/mascotas/post-mascotas.feature@crear')
    Given url 'https://petstore.swagger.io/v2/pet/'+idPet
    And header Content-Type = 'application/json'
    And header User-Agent = 'PostmanRuntime/7.45.0'
    When method delete
    Then status 200
    And print response
    And match response.code == 200
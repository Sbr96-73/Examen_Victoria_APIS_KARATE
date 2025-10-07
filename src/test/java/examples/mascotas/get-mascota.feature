Feature: Consulta

  @consultar @test
  Scenario: Se crea la mascota llamada boby
    * call read('classpath:examples/mascotas/post-mascotas.feature@crear')
    Given url 'https://petstore.swagger.io/v2/pet/'+idPet
    And header Content-Type = 'application/json'
    And header User-Agent = 'PostmanRuntime/7.45.0'
    When method get
    Then status 200
    And print response
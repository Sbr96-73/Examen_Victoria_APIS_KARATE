Feature: Actualizar mascota

  @actualizar @test
  Scenario: Se crea la mascota llamada boby
    Given url 'https://petstore.swagger.io/v2/pet'
    And header Content-Type = 'application/json'
    And header User-Agent = 'PostmanRuntime/7.45.0'
    And request
      """
      {
        "id": 45450,
        "category": {
          "id": 0,
          "name": "string"
        },
        "name": "boby",
        "photoUrls": [
          "string"
        ],
        "tags": [
          {
            "id": 0,
            "name": "string"
          }
        ],
        "status": "available"
      }
      """
    When method put
    Then status 200
    And print response
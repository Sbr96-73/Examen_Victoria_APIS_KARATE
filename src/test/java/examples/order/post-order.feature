 Feature: Creaciones de Ordenes

    @crear @test
    Scenario: Crear una orden exitosamente
      Given url 'https://petstore.swagger.io/v2/store/order'
      And header Content-Type = 'application/json'
      And header User-Agent = 'PostmanRuntime/7.48.0'
      And request


      """
      {
    "id": 71857765,
    "petId": 109,
    "quantity": 3,
    "shipDate": "2025-10-06T19:20:19.422Z",
    "status": "delivered",
    "complete": true
  }
      """
      When method post
      Then status 200
      And print response

      * def orderId = response.id


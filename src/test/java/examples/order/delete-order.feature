Feature: Eliminar orden

  @eliminar
  Scenario: Eliminar orden
    * call read('classpath:examples/order/post-order.feature@crear')
    Given url 'https://petstore.swagger.io/v2/store/order/' + orderId
    And header Content-Type = 'application/json'
    And header User-Agent = 'PostmanRuntime/7.48.0'
    When method delete
    Then status 200
    And print response
    And match response.code == 200
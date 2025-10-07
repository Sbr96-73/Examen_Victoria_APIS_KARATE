Feature: Consulta de ordenes

  @consultar
  Scenario: Consultar de orden
    * def crearOrder = call read('post-order.feature')
    * def orderId = crearOrder.orderId

    Given url 'https://petstore.swagger.io/v2/store/order/' + orderId
    And header Content-Type = 'application/json'
    And header User-Agent = 'PostmanRuntime/7.48.0'
    When method get
    Then status 200
    And print response
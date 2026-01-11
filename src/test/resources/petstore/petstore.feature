Feature: PetStore API tests

  Background:
    * url baseUrl
    * def crearM = read('data/crear_mascota.json')
    * def actualizarM = read('data/act_mascota.json')

  Scenario: Añadir una mascota a la tienda
    Given path 'pet'
    And request crearM
    When method post
    Then status 200
    And match response.id == crearM.id
    And match response.name == crearM.name

  Scenario: Consultar la mascota ingresada previamente (Búsqueda por ID)
    Given path 'pet', crearM.id
    When method get
    Then status 200
    And match response.id == crearM.id
    And match response.name == crearM.name

  Scenario: Actualizar el nombre de la mascota y el estatus a "sold"
    Given path 'pet'
    And request actualizarM
    When method put
    Then status 200
    And match response.name == actualizarM.name
    And match response.status == actualizarM.status

  Scenario: Consultar la mascota modificada por estatus (Búsqueda por estatus)
    Given path 'pet/findByStatus'
    And param status = actualizarM.status
    When method get
    Then status 200
    # Buscar dentro del array por id y verificar el nombre del elemento encontrado
    * def found = response.find(x => x.id == actualizarM.id)
    And match found != null
    And match found.name == actualizarM.name

Feature: cas de tests pour Users

  Background: 
    * url "https://jsonplaceholder.typicode.com"

  Scenario: Verifier qu'il retourne des utilisateurs
    Given path 'users'
    When method Get
    Then status 200

  Scenario: Lire l'article numéro 1
    Given path 'posts', '1'
    When method GET
    Then status 200
    And match response.id == 1
  
  Scenario:Verifier le nom du premier user
    Given path '/users/1'
    When method Get
    Then status 200
    And response.name="Leanne Graham"
Feature: cas de tests pour Users

  Background: 
    * url "https://jsonplaceholder.typicode.com"

  Scenario: Verifier qu'il retourne des utilisateurs
    Given path 'users'
    When method Get
    Then status 200

  Scenario: Vérifier que le nombre d'utilisateurs est correct
    Given path '/users'
    When method Get
    Then status 200
    And assert response.length >= 10
  
  Scenario:Verifier le nom du premier user
    Given path '/users/1'
    When method Get
    Then status 200
    And response.name="Leanne Graham"
Feature: cas de tests pour Users

  Background: 
    * url "https://jsonplaceholder.typicode.com"

  Scenario: Verifier qu'il retourne des utilisateurs
    Given path 'users'
    When method Get
    Then status 200
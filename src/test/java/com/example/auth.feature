Feature:Test Authentification

Background:
    * url 'https://api-noprod.omnichannel-stage.np.stla-aws.net/dev/v1/auth'

Scenario: Get auth
    Given path ''
    When method POST
    Then status 200
    And response.print


    
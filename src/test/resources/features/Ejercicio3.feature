Feature: Token Clean

  @User
  Scenario: As admin user
  I want to get and delete a token
  So that i am able to delete the token

    When I send a request GET to url http://todo.ly/api/authentication/token.json with json
    """
    """
    Then I expected response code 200
    And I get the property TokenString save on TOKEN
    And I expected the response body
    """
    {
      "TokenString": TOKEN,
      "UserEmail": "rcuevas@upb.com",
      "ExpirationTime": "IGNORE"
    }
    """
    When I send a delete request with TOKEN to http://todo.ly/api/authentication/token.json
    Then I expected response code 200
    And I expected the response body

    """
    {
      "TokenString": TOKEN,
      "UserEmail": "rcuevas@upb.com",
      "ExpirationTime": "IGNORE"
    }
    """


Feature: Ejercicio 1

  @User
  Scenario: As admin user
  I want to create and update a user
  So that i am able to use the API of user

    Given I have access to Todo.ly
    When I send a request POST to url http://todo.ly/api/user.json with json
    """
    {
      "Email": "robertocuevasp@ignis.com",
      "FullName": "Roberto Cuevas Pinto",
      "Password": "Pequelul17"
    }
    """
    Then I expected response code 200
    And I expected the response body
    """
    {
      "Id": "IGNORE",
      "Email": "robertocuevasp@ignis.com",
      "Password": null,
      "FullName": "Roberto Cuevas Pinto",
      "TimeZone": 0,
      "IsProUser": false,
      "DefaultProjectId": "IGNORE",
      "AddItemMoreExpanded": false,
      "EditDueDateMoreExpanded": false,
      "ListSortType": 0,
      "FirstDayOfWeek": 0,
      "NewTaskDueDate": "IGNORE",
      "TimeZoneId": "IGNORE"
    }
    """
    And I get the property Id save on ID_USER
    When I send a request PUT to url http://todo.ly/api/user/0.json with json
    """
    {
      "FullName": "Roberto Pablo Cuevas Pinto"
    }
    """
    Then I expected response code 200
    And I expected the response body
    """
    {
      "Id": ID_USER,
      "Email": "robertocuevasp@ignis.com",
      "Password": null,
      "FullName": "Roberto Pablo Cuevas Pinto",
      "TimeZone": 0,
      "IsProUser": false,
      "DefaultProjectId": "IGNORE",
      "AddItemMoreExpanded": false,
      "EditDueDateMoreExpanded": false,
      "ListSortType": 0,
      "FirstDayOfWeek": 0,
      "NewTaskDueDate": "IGNORE",
      "TimeZoneId": "IGNORE"
    }
    """
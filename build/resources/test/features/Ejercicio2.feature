Feature: Item Clean

  @Item
  Scenario: As admin user
  I want to create, update and delete an item
  So that i am able to manipulate the item

    Given I have access to Todo.ly
    When I send a request POST to url http://todo.ly/api/items.json with json
    """
    {
        "Content": "Item Nuevo Roberto"
    }
    """
    Then I expected response code 200
    And I expected the response body
    """
    {
      "Id": "IGNORE",
      "Content": "Item Nuevo Roberto",
      "ItemType": 1,
      "Checked": false,
      "ProjectId": null,
      "ParentId": null,
      "Path": "",
      "Collapsed": false,
      "DateString": null,
      "DateStringPriority": 0,
      "DueDate": "",
      "Recurrence": null,
      "ItemOrder": null,
      "Priority": 4,
      "LastSyncedDateTime": "IGNORE",
      "Children": [

      ],
      "DueDateTime": null,
      "CreatedDate": "IGNORE",
      "LastCheckedDate": null,
      "LastUpdatedDate": "IGNORE",
      "Deleted": false,
      "Notes": "",
      "InHistory": false,
      "SyncClientCreationId": null,
      "DueTimeSpecified": true,
      "OwnerId": "IGNORE"
    }
    """
    And I get the property Id save on ID_ITEM
    When I send a request PUT to url http://todo.ly/api/items/[id].json with json
    """
    {
        "Content": "Item Nuevo Roberto Cuevas Update"
    }
    """
    Then I expected response code 200
    And I expected the response body
    """
    {
      "Id": Id_Item,
      "Content": "Item Nuevo Roberto Cuevas Update",
      "ItemType": 1,
      "Checked": false,
      "ProjectId": null,
      "ParentId": null,
      "Path": "",
      "Collapsed": false,
      "DateString": null,
      "DateStringPriority": 0,
      "DueDate": "",
      "Recurrence": null,
      "ItemOrder": null,
      "Priority": 4,
      "LastSyncedDateTime": "IGNORE",
      "Children": [],
      "DueDateTime": null,
      "CreatedDate": "IGNORE",
      "LastCheckedDate": null,
      "LastUpdatedDate": "IGNORE",
      "Deleted": false,
      "Notes": "",
      "InHistory": false,
      "SyncClientCreationId": null,
      "DueTimeSpecified": true,
      "OwnerId": "IGNORE"
    }
    """

    When I send a request DELETE to url http://todo.ly/api/items/[id].json with json
    """
    """
    Then I expected response code 200
    And I expected the response body
    """
    {
      "Id": Id_Item,
      "Content": "Item Nuevo Roberto Cuevas Update",
      "ItemType": 1,
      "Checked": false,
      "ProjectId": null,
      "ParentId": null,
      "Path": "",
      "Collapsed": false,
      "DateString": null,
      "DateStringPriority": 0,
      "DueDate": "",
      "Recurrence": null,
      "ItemOrder": null,
      "Priority": 4,
      "LastSyncedDateTime": "IGNORE",
      "Children": [],
      "DueDateTime": null,
      "CreatedDate": "IGNORE",
      "LastCheckedDate": null,
      "LastUpdatedDate": "IGNORE",
      "Deleted": false,
      "Notes": "",
      "InHistory": false,
      "SyncClientCreationId": null,
      "DueTimeSpecified": true,
      "OwnerId": "IGNORE"
    }
    """
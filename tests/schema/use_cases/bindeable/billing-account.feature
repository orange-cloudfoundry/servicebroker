Feature: As a service author, in order to support composable plans documented at https://github.com/openservicebrokerapi/servicebroker/issues/104#issuecomment-265245581 , I need to specify binding credentials format per plan

  Scenario: mysql cluster service plan is not bindeable, i.e. bind returns empty response
    Given the schema specified "schema.json" as part of the catalog response specified in "catalog-with-broker-attached-schema.json"
    When the UI user evaluates the "cluster-bind-response.json" response
    Then the response is marked as valid
    When the UI user evaluates the "shared-bind-response.json" response
    Then the response is marked as valid
    When the UI user evaluates the "shared-bind-response.json" response
    Then the response is marked as valid

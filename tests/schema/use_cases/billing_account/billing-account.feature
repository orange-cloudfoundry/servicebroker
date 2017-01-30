Feature: As a service author, in order to link customers to a billing account, I need to specify that all of my service instances provisionning requests (across plans and service offering) require account id information

  Scenario: validate presence of account id parameter in all service instance create requests
    Given the schema specified "schema.json" as part of the catalog response specified in "catalog-with-broker-attached-schema.json"
    When the user prepares the "create-mysql-premium-plan.json" request
    Then the request is marked as valid
    When the user prepares the "create-mysql-standard-plan.json" request
    Then the request is marked as valid
    When the user prepares the "create-pg-standard-plan.json" request
    Then the request is marked as valid
    When the user prepares the "create-invalid-missing-accountid" request
    Then the request is marked as invalid
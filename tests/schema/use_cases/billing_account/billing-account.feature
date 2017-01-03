Feature: As a service author, in order to link customers to a billing account, I need to specify that all of my service instances provisionning requests (across plans and service offering) require account id information

  Scenario: validate presence of account id parameter in all provision requests
    Given the schema specified "schema.json" as part of the catalog response specified in "catalog-with-broker-attached-schema.json"
    When the user prepares the "provision-mysql-premium-plan.json" request
    Then it is marked as valid
    When the user prepares the "provision-mysql-standard-plan.json" request
    Then it is marked as valid
    When the user prepares the "provision-pg-standard-plan.json" request
    Then it is marked as valid
    When the user prepares the "invalid-missing-accountid-provision" request
    Then it is marked as invalid
Feature: as a platform provider, in order to properly distinguish secrets from non-secrets in returned credentials (eg to generate UI hiding secrets), I need a way to know which binding fields contain secrets

  Scenario: binding credentials include extended schema vocabularies
    Given the schema specified "schema-with-hints.json" as part of the catalog response specified in "catalog-with-broker-attached-schema.json"
    When the UI user evaluates the "shared-bind-response.json" response, it the fields as
      | field_name | attributes |
      | username   | secret     |
      | password   | secret     |
      | uri        | secret     |
      | jdbcUrl    | secret     |
      | name       |            |
      | hostname   |            |
      | port       |            |

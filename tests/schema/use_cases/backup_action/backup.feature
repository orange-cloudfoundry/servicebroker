Feature: As a service author, in order to leverage the service broker action to expose a backup feature, I need to express constraints on a backup action

  Scenario: validate presence of input parameters for a given broker action
    Given the schema specified "schema.json" as part of the catalog response
    When the user prepares the "backup-action.json" request
    Then the request is marked as valid
    When the user prepares the "backup-action-invalid-backup-config.json" request
    Then the request is marked as invalid
    When the user prepares the "backup-action-missing-backup-config.json" request
    Then the request is marked as invalid

  Scenario: support per-plan constraints (backup is only supported in the premium plan)
    Given the schema specified "schema.json" as part of the catalog response
    When the user prepares the "backup-action.json" request
    Then the request is marked as valid
    When the user prepares the "backup-action-invalid-nobackup-in-standard-plan.json" request
    Then the request is marked as invalid


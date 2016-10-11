Feature: Delete an exam

@services
  Scenario: 1 - Delete an exame with success
    Given I sent valid data about a nonexistent exame
    Then I should get success
    When I sent this id to delete this exame
    Then I should get success

@services
  Scenario: 2 - Delete an exame that nonexistent
    Given I sent an invalid id to delete this exame
    Then I should get fail

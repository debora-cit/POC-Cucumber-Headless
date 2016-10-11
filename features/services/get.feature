Feature: List exams

@services
  Scenario: 1 - List exams with success
    Given I sent valid data about a existent exame
    Then I should see at least one exame
    And I should get success

@services
  Scenario: 2 - Fail to list an exame nonexistent
    Given I sent an invalid data about a nonexistent exame
    Then I should get fail

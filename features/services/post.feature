Feature: Register exams

@services @post
  Scenario: 1 - Register an exame with success
    Given I sent valid data about a nonexistent exame
    Then I should get success

@services @post
  Scenario: 2 - Fail to register an exame already existent
    Given I sent valid data about a nonexistent exame
    Then I should get success
    When I sent the same data
    Then I should get fail

@services @post
  Scenario: 3 - Register an exame with null fields
    Given I sent an empty list about a nonexistent exame
    Then I should get every null fields

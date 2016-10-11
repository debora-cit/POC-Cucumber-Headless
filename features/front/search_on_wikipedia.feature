Feature: Provide search tools in the WikiPedia

@front
Scenario: Search for information about a day of the year and follow a link

    Given I am on the WikiPedia homepage
    When I search for "May 23"
    Then I should see an entry about "Java programming language"
    And I should be able to click the link "Java programming language"

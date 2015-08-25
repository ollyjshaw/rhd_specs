@javascript
Feature: Search
  In order to find pages on the web
  As an information seeker
  I want to be able to search using keywords

  Scenario: Search for cucumber
    Given I am on the home page
    And I have entered "red had developers" into the "q" field
    Then I should see "developers.redhat.com"

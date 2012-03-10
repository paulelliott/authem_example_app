Feature: Change logged in user with establish presence
  Scenario:
    Given the following user:
      | email | jane@example.com |
    And I am signed in as "joe@example.com"
    When I change the signed in user to "jane@example.com"
    Then I should see "Welcome, jane@example.com"

    When I create a new post
    Then I should see that post created by "jane@example.com"

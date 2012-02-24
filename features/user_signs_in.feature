Feature: User signs in

  Scenario:
    Given I am signed in as "test@example.com"
    Then I should see "Welcome, test@example.com"

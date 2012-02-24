Feature: User add a new post

  Scenario: visitor can't add post
    Given I am on the homepage
    When I go to the new post page
    Then I should not see "New Post"
    And I should see "Sign in"

  Scenario: successfully added
    Given I am signed in
    When I go to the new post page
    And I fill in "Title" with "Welcome to my new blog"
    And I fill in "Body" with "This blog is awesome"
    And I press "Save"
    Then I should see the following table:
      | Title                  | Body                 |
      | Welcome to my new blog | This blog is awesome |

  Scenario: validations
    Given I am signed in
    When I go to the new post page
    And I press "Save"
    Then I should see "Title can't be blank"

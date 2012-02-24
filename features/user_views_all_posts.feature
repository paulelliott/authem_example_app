Feature: User views list of posts

  Scenario:
    Given the following posts:
      | title          | body                    |
      | Hi             | Welcome                 |
      | Surfing in JAX | Surf was good yesterday |
    And I am on the homepage
    Then I should see the following table:
      | Title          | Body                    |
      | Hi             | Welcome                 |
      | Surfing in JAX | Surf was good yesterday |


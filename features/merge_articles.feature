Feature: Merge Articles
  As a blog administrator
  In order to avoid similar articles
  I want to be able to merge articles together

  Background:
    Given the blog is set up
    And I am logged into the admin panel
    And the following articles exist
      | id  | title   | body        |
      | 123 | Foobar  | LoremIpsum  |
      | 567 | Foobar2 | LoremIpsum2 |

  Scenario: Successfully merge articles
    Given I am on the article page for "Foobar"
    And I fill in "merge_with" with "567"
    And I press "Merge"
    Then the article "Foobar" should have body "LoremIpsum LoremIpsum2"
    And show me the page

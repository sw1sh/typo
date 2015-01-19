Feature: Create Categories
  As a blog administrator
  In order to make my blog awesome
  I want to be able to categorize my articles

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully create and edit category
    Given I am on the new category page
    When I fill in "category_name" with "Some random category"
    And I fill in "category_keywords" with "keyword123"
    And I press "Save"
    Then I should see "Some random category"
    And I should see "keyword123"
    When I follow "Some random category"
    And I fill in "category_name" with "New random category"
    And I fill in "category_permalink" with ""
    And I press "Save"
    Then I should see "New random category"
    And I should not see "Some random category"



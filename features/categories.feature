Feature: Create and Edit Categories
  As a blog administrator
  In order to organize blog articles
  I want to be able to create new categories and assign articles to them

  Background:
    Given the blog is set up
    And I am logged into the admin panel
    When I follow "Categories"

  Scenario: Link should not be broken
    Then I should see "Categories"
    And I should see "Permalink"
    And I should see "General"

  Scenario: It should be possible to create new categories
    When I fill in "Name" with "Horror"
    And I fill in "Keywords" with "film, movies"
    And I fill in "Description" with "Category of Horror"
    And I press "Save"
    Then I should see "Horror"
    And I should see "film, movies"
    And I should see "Category of Horror"
    And I should see "no articles"

  Scenario: It should be possible to edit existing categories
    When I follow "General"
    Then I fill in "Description" with "This is General Description"
    And I press "Save"
    Then I should see "This is General Description"



@api
Feature: Test patterns should load
  Confirm that all patterns created for testing load successfully.

  Scenario: Test patterns were loaded correctly
    Given I am logged in as a user with the "administrator" role
    And am on "patterns"
    Then I should see the link "Default Templates Yaml Test"
    And I should see the link "Default_templates_use_test"
    And I should see the link "Default Templates Pattern Defintion Test"
    And I should see the link "Default Templates Json Test"
    And I should see the link "Default_templates_hyphen_test"
    And I should see the link "Default_templates_leading_number_test"
    And I should see the link "Default_templates_missing_number_test"
    And I should see the link "Default_templates_missing_number_alt_test"
    And I should see the link "Pattern_lab_twig_namespace"
    And I should see the link "Join_item"
    And I should see the link "Pattern_lab_data_transform_join"
    And I should see the link "Pattern_lab_data_transform_include_advanced"
    And I should see the link "List_item"

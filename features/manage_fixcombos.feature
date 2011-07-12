#@combo
Feature: Manage fixcombos
  In order to allow consumers to subscribe to a regular delivery of his products without them being able to change the content of the individual shipment
  A producer
  wants to create and manage a fixcombo
  
  # Scenario: Create new fixcombos
  #   Given I am on the new combo page
  #   When I provide the details for a fixcombo
  #   And I press the submit button
  #   Then I should go to the show combo page
  #   And I should see the fixcombo


  Scenario: Create a combo
    Given I am logged in as "producer"
    And I am on the new combo page
    When I fill in "combo_name" with "NewCombo"
    When I fill in "combo_price" with "20.15"
    And I press "combo_submit"
    Then I should see "NewCombo"

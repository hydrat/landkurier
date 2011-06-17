@combo
Feature: Manage fixcombos
  In order to allow consumers to subscribe to a regular delivery of my products without them being able to change the content of the shipment
  A producer
  wants to create and manage a fixcombo
  
  Scenario: Register new fixcombos
    Given I am on the new combo page
    When I provide the details for a fixcombo
    And I press the submit button
    Then I should go to the show combo page
    And I should see the fixcombo in my portfolio

    Scenario: Create a combo
      Given I am logged in as "producer"
      When I provide the name of combo
      And I create the combo
      Then I should see the combo

    # Scenario: Define the price of a combo
    #   Given a 
    #   When 
    #   Then 
    # 
  

  # Scenario: Delete fixcombos
  #   Given the following fixcombos:
  #     ||
  #     ||
  #     ||
  #     ||
  #     ||
  #   When I delete the 3rd fixcombos
  #   Then I should see the following fixcombos:
  #     ||
  #     ||
  #     ||
  #     ||

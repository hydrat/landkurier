@combo
Feature: Subscribe to a Combo (Gemueseabo)
  In order to receive regular delivery of products
  A consumer
  wants to subscribe to a combo

  # Scenario: See all combos
  #   Given a selection of combos
  #   When I am on the combos page
  #   Then I should see 
  
  Scenario: Subscribe a combo as a logged in user
    Given a combo exists with name: "Superabo", price: "20.10", size: "3"
    When I go to the show page for that combo
    And I follow "subscribe_combo"
    Then I should be on the new subscription page
  
  

#   
#   Scenario Outline: Show the formatted price
#     Given a combo costing <price>
#     When I am on the show combo page for <combo>
#     Then I should see the <formatted_price>
#   
#   Scenarios: Swiss francs
#     | combo | price | formatted_price |
#     | "comboname" | 20 | CHF 20.00 |
#     | "comboname" | 30.00 | CHF 30.00 |
#     | "comboname" | 19.90 | CHF 19.90 |
#     | "comboname" | 0.95 | CHF 0.95 |
#     | "comboname" | 1.98 | CHF 2.00 |
#     | "comboname" | 2.37 | CHF 2.35 |
#     | "comboname" | 1.125 | CHF 1.50 |   
  
  # Scenario: Show the price without decimals
  #   Given a combo costing "20"
  #   When I am on the show page of the combo
  #   Then I should see the price without decimals
  #   
  # Scenario: Show the price with decimals
  #   Given a combo costing "19.90"
  #   When I am on the show page of the combo
  #   Then I should see the price with decimals

    

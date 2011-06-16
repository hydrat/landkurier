@combo
Feature: Subscribe to a Combo (Gemueseabo)
  In order to receive regular delivery of products
  As a consumer
  I want to subscribe to a combo
  
  Scenario Outline: Show the formatted price
    Given a combo costing <price>
    When I am on the show page for that model
    Then I should see the <formatted_price>
  
  Scenarios: Swiss francs
    | price | formatted_price |
    | 20 | CHF 20.00 |
    | 30.00 | CHF 30.00 |
    | 19.90 | CHF 19.90 |
    | 0.95 | CHF 0.95 |
    | 1.98 | CHF 2.00 |
    | 2.37 | CHF 2.35 |
    | 1.125 | CHF 1.50 |   
  
  # Scenario: Show the price without decimals
  #   Given a combo costing "20"
  #   When I am on the show page of the combo
  #   Then I should see the price without decimals
  #   
  # Scenario: Show the price with decimals
  #   Given a combo costing "19.90"
  #   When I am on the show page of the combo
  #   Then I should see the price with decimals

    
  Scenario: Order a combo subscription
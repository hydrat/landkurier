Feature: Subscribe to a Combo
  In order to receive regular delivery of products
  A consumer
  wants to subscribe to a combo

  # Scenario: See all combos
  #   Given a selection of combos
  #   When I am on the combos page
  #   Then I should see 
  
  Scenario: Navigate to Subscription page after having chosen a Combo
    Given a combo exists with name: "Superkiste", price: "20.10", size: "3"
    When I go to the show page for that combo
    And I follow "subscribe_combo"
    Then I should be on the combo's new subscription page
  
  Scenario: Tell the producer which products not to put in the Combo
    Given a combo exists with name: "Dieses Chischtli will i", price: "18.12", size: "3"
    When I go to the combo's new subscription page
    And I fill in "Knoblauch, Knollensellerie und Rosenkohl" for "subscription_exclusions"
    And I press "subscription_submit"
    Then I should see "Knoblauch, Knollensellerie und Rosenkohl"

  @combo
  Scenario: I want to receive my Combo every 2 weeks
    Given a combo exists with name: "Dieses Chischtli will i", price: "18.12", size: "3"
    When I go to the combo's new subscription page
    And I fill in # Alle 2 Wochen for "subscription_periodicity"
    And I press "subscription_submit"
    Then #I should receive a ComboBox every two weeks
    
  Scenario: I want to pay for my Combo Subscription
    Given a combo exists with name: "Dieses Chischtli will i", price: "18.12", size: "3"
    And I am on the combo's new subscription page
    When I press "subscription_submit"
    Then I should see details of my subscriptions for verification
    And the subscription should be in my cart
    
  
  
  

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

    

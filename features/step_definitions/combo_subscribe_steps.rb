Given /^a combo costing (\d+)$/ do |price|
  @combo= Combo.create!(:price => price)
end
 
Then /^I should see the price with currency$/ do
  @combo.price.should == "CHF 20.-"
end

Then /^I should see the periodicity in days$/ do
  pending # express the regexp above with the code you wish you had
end

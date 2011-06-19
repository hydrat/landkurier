
Given /^I am logged in as "([^"]*)"$/ do |role|
  producer = FactoryGirl.create(role)
  visit '/login'
  fill_in 'user_email', :with => producer.email
  fill_in 'user_password', :with => producer.password
  click_button 'user_submit'
  # user_signed_in?.should be_true
  # current_user.producer?.should be_true  
end

# When /^I provide the details for a fixcombo$/ do
#   select "FixCombo", :from => :combo_type 
#   fill_in 'combo_name', :with => "My Fixcombo"
#   fill_in 'combo_price', :with => '20'
# end
# 
# When /^I press the submit button$/ do
#   click_button(:combo_submit)
# end
# 
# Then /^I should go to the show combo page$/ do
#   combo_path('de', 1001)
# end
# 
# Then /^I should see the fixcombo$/ do
#   page.should have_content('My Fixcombo')
# end




# Given /^the following fixcombos:$/ do |fixcombos|
#   Fixcombos.create!(fixcombos.hashes)
# end
# 
# When /^I delete the (\d+)(?:st|nd|rd|th) fixcombos$/ do |pos|
#   visit fixcombos_path
#   within("table tr:nth-child(#{pos.to_i+1})") do
#     click_link "Destroy"
#   end
# end
# 
# Then /^I should see the following fixcombos:$/ do |expected_fixcombos_table|
#   expected_fixcombos_table.diff!(tableish('table tr', 'td,th'))
# end

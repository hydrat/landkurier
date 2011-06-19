Given /^the following users$/ do |table|
  table.hashes.each do |hash|  
    FactoryGirl(:confirmed_user, hash)
  end
end

When /^I provide my personal data$/ do
  fill_in('user_email', :with => 'user@landkurier.ch')
  fill_in('user_password', :with => 'secret')
  fill_in('user_password_confirmation', :with => 'secret')
end

Then /^a user profile should be created$/ do
  User.find_by_email('user@landkurier.ch').present?.should be_true
end

Then /^I should not be a producer$/ do
  @user = User.find_by_email('user@landkurier.ch')
  @user.producer?.should be_false
end

When /^I say that I am a producer$/ do
  check('user_producer')
end

Then /^I should be a producer$/ do
  @user = User.find_by_email('user@landkurier.ch')
  @user.producer?.should be_true
end

Given /^I am not registered with the email "([^"]*)"$/ do |email|
  @user = User.find_by_email(email)
  @user.should be_nil
end

Given /^I am logged in as "([^"]*)" with password "([^"]*)"$/ do |login, password|
  visit "/login"
  fill_in("user_email", :with => login) 
  fill_in("user_password", :with => password) 
  click_button("user_submit")
end

Given /^I am not logged in$/ do
  visit "/logout"
end


Then /^I should see a link "([^"]*)"$/ do |linkname|
  page.has_link? linkname
end

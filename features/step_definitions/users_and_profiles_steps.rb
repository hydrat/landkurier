Given /^the following users$/ do |table|
  table.hashes.each do |hash|  
    Factory(:confirmed_user, hash)
  end
end

Given /^I have the email "([^"]*)"$/ do |email|
  @email = email
end

Given /^I am not registered$/ do
  @user = User.find_by_email(@email)
  @user.should be_nil
end

Given /^I am logged in as "([^"]*)" with password "([^"]*)"$/ do |login, password|
  visit "/users/sign_in"
  fill_in("user_email", :with => login) 
  fill_in("user_password", :with => password) 
  click_button("user_submit")
end

Then /^I should see a link "([^"]*)"$/ do |linkname|
  page.has_link? linkname
end
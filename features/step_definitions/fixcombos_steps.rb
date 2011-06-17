Given /^the following fixcombos:$/ do |fixcombos|
  Fixcombos.create!(fixcombos.hashes)
end

When /^I delete the (\d+)(?:st|nd|rd|th) fixcombos$/ do |pos|
  visit fixcombos_path
  within("table tr:nth-child(#{pos.to_i+1})") do
    click_link "Destroy"
  end
end

Then /^I should see the following fixcombos:$/ do |expected_fixcombos_table|
  expected_fixcombos_table.diff!(tableish('table tr', 'td,th'))
end

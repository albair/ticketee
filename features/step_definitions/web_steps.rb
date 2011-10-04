Given /^(?:|I )am on (.+)$/ do |page_name|
  visit path_to(page_name)
end

When /^I follow "([^"]*)"$/ do |arg1|
  visit new_project_path#@project = Project.new#pending # express the regexp above with the code you wish you had
end

When /^I fill in "([^"]*)" with "([^"]*)"$/ do |arg1, arg2|
  #pending # express the regexp above with the code you wish you had
end

When /^I should be on the project page for "([^"]*)"$/ do |arg1|
  #pending # express the regexp above with the code you wish you had
end


When /^I press "([^"]*)"$/ do |arg1|
  #pending # express the regexp above with the code you wish you had
end

Then /^I should see "([^"]*)"$/ do |arg1|
  #pending # express the regexp above with the code you wish you had
end


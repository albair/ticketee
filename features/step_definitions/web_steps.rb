Given /^(?:|I )am on (.+)$/ do |page_name|
  visit path_to(page_name)
end


When /^I fill in "([^"]*)" with "([^"]*)"$/ do |arg1, arg2|
 fill_in arg1, :with=>arg2 # express the regexp above with the code you wish you had
end


When /^I press "([^"]*)"$/ do |arg1|

  click_button (arg1)

end

When /^(?:|I )follow "([^"]*)"(?: within "([^"]*)")?$/ do |link, locator|
  with_scope(locator) do
    click_link(link)
  end
end


When /^(?:|I )select "(.+)" from "(.+)"$/ do |value, field|

  select(value, :from => field)

end

Then /^show me the page$/ do
  save_and_open_page
end



Then /^(?:|I )should see \/([^\/]*)\/$/ do |regexp|
  regexp = Regexp.new(regexp)
  if page.respond_to? :should
    page.should have_xpath('//*', :text => regexp)
  else
    assert page.has_xpath?('//*', :text => regexp)
  end
end

Then /^(?:|I )should not see "([^"]*)"$/ do |text|
  if page.respond_to? :should
    page.should have_no_content(text)
  else
    assert page.has_no_content?(text)
  end
end

Then /^(?:|I )should be on (.+)$/ do |page_name|
  current_path = URI.parse(current_url).path
  if current_path.respond_to? :should
    current_path.should == path_to(page_name)
  else
    assert_equal path_to(page_name), current_path
  end

end

Then /^(?:|I )should see "([^\"]*)"(?: within "([^\"]*)")?$/ do |text, selector|
  with_scope(selector) do
    if defined?(Spec::Rails::Matchers)
      page.should have_content(text)
    else
      assert page.has_content?(text)
    end
  end
end

Then /^I should not see "([^"]*)" within "([^"]*)"$/ do |text, selector|
  with_scope(selector) do
    if defined?(Spec::Rails::Matchers)
      page.should have_no_content(text)
    else
      assert page.has_no_content?(text)
    end
  end
end






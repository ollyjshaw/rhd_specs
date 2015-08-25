Given /^I am on the home page$/ do
  visit('/')
end

Given /^I have entered "([^"]*)" into the "([^"]*)" field$/ do |text, field|
  fill_in field, :with => text
  click_on 'Google Search'
end

Then /^I should see "([^"]*)"$/ do |text|
  #page.should have_content(text)
  expect(page).to have_content(text)
end


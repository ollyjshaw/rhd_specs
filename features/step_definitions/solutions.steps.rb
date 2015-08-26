Given(/^I am on the solutions page$/) do
  visit('/solutions')
end

Then(/^I should see the main title$/) do
  find('.blowout').text.include?("SOLUTIONS")
end

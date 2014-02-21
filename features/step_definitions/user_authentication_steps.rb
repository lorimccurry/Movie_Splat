When(/^I go to the home page$/) do
  visit root_path
end

When(/^I follow "(.*?)"$/) do |link|
  click_link(link)
end

When(/^I fill in "(.*?)" for "(.*?)"$/) do |content, field|
  fill_in(field, with: content)
end

When(/^I press "(.*?)"$/) do |text|
  click_button(text)
end

Then(/^I should see "(.*?)"$/) do |text|
  page.should have_content(text)
end

Then(/^I should not see "(.*?)"$/) do |text|
  page.should_not have_content(text)
end

# When(/^I should not see "(.*?)"$/) do |arg1|
#   pending # express the regexp above with the code you wish you had
# end

# When(/^I should see "(.*?)"$/) do |arg1|
#   pending # express the regexp above with the code you wish you had
# end

# Given(/^the following user:$/) do |table|
#   # table is a Cucumber::Ast::Table
#   pending # express the regexp above with the code you wish you had
# end

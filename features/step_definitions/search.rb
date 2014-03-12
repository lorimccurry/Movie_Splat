When(/^I fill in the search input with "(.*?)"$/) do |arg1|
  fill_in 'search_field', :with => 'Hustle'
end

When(/^I save and open the page$/) do
  save_and_open_page
end
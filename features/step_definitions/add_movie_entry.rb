When(/^I go to the library page$/) do
  visit library_path
end

Then(/^I should go to the add movie page$/) do
  visit new_movie_path
end

Then(/^I should go to the library page$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see: "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see "(.*?)" within my library$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

When(/^I go to the library page$/) do
  visit library_path
end

Then(/^I should go to the add movie entry page$/) do
  visit new_movie_entry_path
end

Then(/^I should see "(.*?)" within my library$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then(/^I check "(.*?)"$/) do |checkbox|
  check(checkbox)
end

Then(/^there should be a movie entry that is seen in the database$/) do
  movie_entry_count = MovieEntry.where(validates_inclusion_of :seen, :in => [true, false]).count
  movie_entry_count.should == 1
end

Then(/^I should see a movie entry that is seen within my library$/) do
  pending # express the regexp above with the code you wish you had
end

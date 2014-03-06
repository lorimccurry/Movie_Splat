When(/^I go to the index page$/) do
  visit movie_entries_path
end

Then(/^I should go to the add movie entry page$/) do
  visit new_movie_entry_path
end

Then(/^I check "(.*?)"$/) do |checkbox|
  check(checkbox)
end

Then(/^there should be a movie entry with the title "(.*?)" in the database$/) do |title|
  Movie.where(title: title).size.should == 1
end

Given(/^that the movie entry for the movie "(.*?)":$/) do |movie_title|
  Fabricate(movie_title)
end

Given(/^the movie "(.*?)"$/) do |movie_title|
  Fabricate(movie_title)
end

Given(/^the following movie entries$/) do |movie_entries|
  movie_entries.hashes.each do |movie_entry|
    movie = Movie.find_by(title: movie_entry.fetch("movie"))
    user = User.find_by(username: movie_entry.fetch("user"))
    MovieEntry.create(movie_entry.merge({user: user, movie: movie}))
  end
end

Then(/^I uncheck "(.*?)"$/) do |checkbox|
  check(checkbox)
end

Then(/^I should see a movie entry with a title of "(.*?)" within the library$/) do |title|
  page.should have_content(title)
end

Then(/^I should see a movie entry with a user rating of "(.*?)" within the library$/) do |rating|
  page.should have_content(rating)
end

Then(/^I should not see a movie entry with a title of "(.*?)" within the library$/) do |title|
  page.should_not have_content(title)
end

Then(/^I should not see a movie entry with a user rating of "(.*?)" within the library$/) do |rating|
  page.should_not have_content(rating)
end
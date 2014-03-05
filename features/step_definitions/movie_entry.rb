When(/^I go to the index page$/) do
  visit movie_entries_path
end

Then(/^I should go to the add movie entry page$/) do
  visit new_movie_entry_path
end

Then(/^I check "(.*?)"$/) do |checkbox|
  check(checkbox)
end

Then(/^there should be a movie entry with a title of "(.*?)" that is seen that is owned that is wishlist see that is wishlist own with a user rating of "(.*?)" and user comments of "(.*?)" in the database$/) do |title, rating, comments|
  movie_count = Movie.where(title: title).size.should == 1
  movie_entry_count = MovieEntry.where(:seen && :own && :wishlist_see && :wishlist_own => [true, false], :user_rating => rating, :user_comments => comments).count
  movie_entry_count.should == 1
end

Then(/^I should see a movie entry with a title of "(.*?)" and a user rating of "(.*?)" within the library$/) do |title, rating|
    page.should have_content(title)
    page.should have_content(rating)
end

Then(/^there should be a movie entry with a title of "(.*?)" that isn't seen that isn't owned that isn't wishlist see that isn't wishlist own with a user rating of "(.*?)" and user comments of "(.*?)" in the database$/) do |title, rating, comments|
  movie_count = Movie.where(title: title).size.should == 1
  rating = rating.to_i
  movie_entry_count = MovieEntry.where(:seen && :own && :wishlist_see && :wishlist_own => [true, false], :user_rating => rating, :user_comments => comments).count
  movie_entry_count.should == 1
end

Then(/^there should be a movie entry with a title of "(.*?)" that isn't seen that isn't owned that isn't wishlist see that isn't wishlist own with no user rating and user comments of "(.*?)" in the database$/) do |title, comments|
  movie_count = Movie.where(title: title).size.should == 1
  movie_entry_count = MovieEntry.where(:seen && :own && :wishlist_see && :wishlist_own => [true, false], :user_rating => nil, :user_comments => comments).count
  movie_entry_count.should == 1
end

Then(/^there should be a movie entry with the title "(.*?)" in the database$/) do |title|
  Movie.where(title: title).size.should == 1
end

Then(/^I should go to the index page$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see a movie entry with a title of "(.*?)" within the library$/) do |title|
  within(".library") do
    page.should have_content(title)
  end
end

Given(/^that the movie entry for the movie "(.*?)":$/) do |movie_title|
  Fabricate(movie_title)
end

Given(/^the movie "(.*?)"$/) do |movie_title|
  Fabricate(movie_title)
end

Given(/^the following movie entries:$/) do |movie_entries|
  movie_entries.hashes.each do |movie_entry|
    movie = Movie.find_by(title: movie_entry.fetch("movie"))
    user = User.find_by(username: movie_entry.fetch("user"))
    MovieEntry.create(movie_entry.merge({user: user, movie: movie}))
  end
end
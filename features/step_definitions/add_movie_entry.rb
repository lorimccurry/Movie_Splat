When(/^I go to the library page$/) do
  visit library_path
end

Then(/^I should go to the add movie entry page$/) do
  visit new_movie_entry_path
end

Then(/^I check "(.*?)"$/) do |checkbox|
  check(checkbox)
end

Then(/^there should be a movie entry that is seen that is owned that is wishlist see that is wishlist own with a user rating of "(.*?)" and user comments of "(.*?)" in the database$/) do |rating, comments|
  movie_entry_count = MovieEntry.where(:seen && :own && :wishlist_see && :wishlist_own => [true, false], :user_rating => rating, :user_comments => comments).count
  movie_entry_count.should == 1
end
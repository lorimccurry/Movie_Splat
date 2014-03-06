Then(/^there should be a movie entry with a title of "(.*?)" in the database$/) do |title|
  movie_attribute = Movie.pluck(:title)
  movie_attribute[0] == title
end

Then(/^there should be a movie entry with seen "(.*?)" in the database$/) do |seen|
  arg_int = seen.to_i
  movie_entry_attribute = MovieEntry.pluck(:seen)
  movie_entry_attribute[0] == arg_int
end

Then(/^there should be a movie entry with owned "(.*?)" in the database$/) do |own|
  arg_int = own.to_i
  movie_entry_attribute = MovieEntry.pluck(:own)
  movie_entry_attribute[0] == own
end

Then(/^there should be a movie entry with wishlist see "(.*?)" in the database$/) do |wishlist_see|
  arg_int = wishlist_see.to_i
  movie_entry_attribute = MovieEntry.pluck(:wishlist_see)
  movie_entry_attribute[0] == wishlist_see
end

Then(/^there should be a movie entry with wishlist own "(.*?)" in the database$/) do |wishlist_own|
  arg_int = wishlist_own.to_i
  movie_entry_attribute = MovieEntry.pluck(:wishlist_own)
  movie_entry_attribute[0] == wishlist_own
end

Then(/^there should be a movie entry with a user rating of "(.*?)" in the database$/) do |user_rating|
  arg_int = user_rating.to_i
  movie_entry_attribute = MovieEntry.pluck(:user_rating)
  movie_entry_attribute[0] == user_rating
end

Then(/^there should be a movie entry with a user comments of "(.*?)" in the database$/) do |user_comments|
  arg_int = user_comments
  movie_entry_attribute = MovieEntry.pluck(:user_comments)
  movie_entry_attribute[0] == user_comments
end
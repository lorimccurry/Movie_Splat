And(/^there should be a movie with the title "(.*?)" in the database$/) do |title|
  movie_attribute = Movie.pluck(:title)
  movie_attribute[0] == title
end

And(/^there should be a movie with the year "(.*?)" in the database$/) do |year|
  movie_attribute = Movie.pluck(:year)
  movie_attribute[0] == year
end

And(/^there should be a movie with the rated "(.*?)" in the database$/) do |rated|
  movie_attribute = Movie.pluck(:rated)
  movie_attribute[0] == rated
end

And(/^there should be a movie with the released "(.*?)" in the database$/) do |released|
  movie_attribute = Movie.pluck(:released)
  movie_attribute[0] == released
end

And(/^there should be a movie with the runtime "(.*?)" in the database$/) do |runtime|
  movie_attribute = Movie.pluck(:runtime)
  movie_attribute[0] == runtime
end

And(/^there should be a movie with the genre "(.*?)" in the database$/) do |genre|
  movie_attribute = Movie.pluck(:genre)
  movie_attribute[0] == genre
end

And(/^there should be a movie with the director "(.*?)" in the database$/) do |director|
  movie_attribute = Movie.pluck(:director)
  movie_attribute[0] == director
end

And(/^there should be a movie with the writer "(.*?)" in the database$/) do |writer|
  movie_attribute = Movie.pluck(:writer)
  movie_attribute[0] == writer
end

And(/^there should be a movie with the actors "(.*?)" in the database$/) do |actors|
  movie_attribute = Movie.pluck(:actors)
  movie_attribute[0] == actors
end

And(/^there should be a movie with the plot "(.*?)" in the database$/) do |plot|
  movie_attribute = Movie.pluck(:plot)
  movie_attribute[0] == plot
end

And(/^there should be a movie with the poster "(.*?)" in the database$/) do |poster|
  movie_attribute = Movie.pluck(:poster)
  movie_attribute[0] == poster
end

And(/^there should be a movie with the tomato_meter "(.*?)" in the database$/) do |tomato_meter|
  arg_int = tomato_meter.to_i
  movie_attribute = Movie.pluck(:tomato_meter)
  movie_attribute[0] == arg_int
end

And(/^there should be a movie with the tomato_image "(.*?)" in the database$/) do |tomato_image|
  movie_attribute = Movie.pluck(:tomato_image)
  movie_attribute[0] == tomato_image
end

And(/^there should be a movie with the tomato_user_meter "(.*?)" in the database$/) do |tomato_user_meter|
  arg_int = tomato_user_meter.to_i
  movie_attribute = Movie.pluck(:tomato_user_meter)
  movie_attribute[0] == arg_int
end

And(/^there should be a movie with the DVD "(.*?)" in the database$/) do |dvd|
  movie_attribute = Movie.pluck(:dvd)
  movie_attribute[0] == dvd
end

And(/^there should be a movie with the box_office "(.*?)" in the database$/) do |box_office|
  movie_attribute = Movie.pluck(:box_office)
  movie_attribute[0] == box_office
end

And(/^there should be a movie with the production "(.*?)" in the database$/) do |production|
  movie_attribute = Movie.pluck(:production)
  movie_attribute[0] == production
end

And(/^there should be a movie with the tomato_reviews "(.*?)" in the database$/) do |tomato_reviews|
  arg_int = tomato_reviews.to_i
  movie_attribute = Movie.pluck(:tomato_reviews)
  movie_attribute[0] == arg_int
end

And(/^there should be a movie with the tomato_fresh "(.*?)" in the database$/) do |tomato_fresh|
  arg_int = tomato_fresh.to_i
  movie_attribute = Movie.pluck(:tomato_fresh)
  movie_attribute[0] == arg_int
end

And(/^there should be a movie with the tomato_rotten "(.*?)" in the database$/) do |tomato_rotten|
  arg_int = tomato_rotten.to_i
  movie_attribute = Movie.pluck(:tomato_rotten)
  movie_attribute[0] == arg_int
end

And(/^there should be a movie with the tomato_user_reviews "(.*?)" in the database$/) do |tomato_user_reviews|
  arg_int = tomato_user_reviews.to_i
  movie_attribute = Movie.pluck(:tomato_user_reviews)
  movie_attribute[0] == arg_int
end
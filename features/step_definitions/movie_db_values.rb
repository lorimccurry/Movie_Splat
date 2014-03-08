And(/^there should be a movie with the "(.*?)" "(.*?)" in the database$/) do |attribute, value|
  key = attribute.to_sym
  movie_attribute_array = Movie.pluck(key)
  attr_string = movie_attribute_array[0].to_s
  attr_string.should == value
end
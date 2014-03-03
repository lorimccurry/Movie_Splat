Fabricator(:movie_entry) do
  title(fabricator: :movie)
  seen
  own
  wishlist_see
  wishlist_own
  user_rating
  user_comments

  Fabrication::Transform.define(:movie, lambda { |title| Movie.find_by_title(title) })
end

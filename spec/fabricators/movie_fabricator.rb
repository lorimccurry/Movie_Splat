Fabricator(:movie) do
  title
  Fabrication::Transform.define(:movie, lambda { |title| Movie.find_by_title(title) })
end

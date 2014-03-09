Fabricator(:movie_entry, alias: [:movie_entry_up]) do
  seen true
  own true
  wishlist_see true
  wishlist_own true
  user_rating 90
  user_comments "I liked it"

  user { Fabricate(:amy) }
  movie { Fabricate("Up") }
end

Fabricator(:movie_entry, alias: [:movie_entry_gravity]) do
  seen true
  own true
  wishlist_see true
  wishlist_own true
  user_rating 90
  user_comments "I liked it"

  user { Fabricate(:amy) }
  movie { Fabricate("Gravity") }
end

Fabricator(:movie_entry, alias: [:movie_entry_american_hustle]) do
  seen true
  own true
  wishlist_see true
  wishlist_own true
  user_rating 90
  user_comments "I liked it"

  user { Fabricate(:amy) }
  movie { Fabricate("American Hustle") }
end

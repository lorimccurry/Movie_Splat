Fabricator(:user, aliases: [:amy]) do
  username "amy"
  email "amy@example.com"
  password "password"
  password_confirmation "password"
end

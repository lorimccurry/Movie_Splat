And "show me the page" do
  save_and_open_page
end

When(/^I go to the home page$/) do
  visit root_path
end

When(/^I (?:click|follow) "(.*?)"$/) do |link|
  click_link(link)
end

When(/^I fill in "(.*?)" for "(.*?)"$/) do |content, field|
  fill_in(field, with: content)
end

# When(/^I press "(.*?)"$/) do |text|
#   click_button(text)
# end

And(/^I press "(.*?)" for the movie "(.*?)"$/) do |text, movie_title|
  VCR.use_cassette "movie/#{movie_title}" do
    click_button(text)
  end
end

Then(/^I should see(?::)? "(.*?)"$/) do |text|
  page.should have_content(text)
end

Then(/^I should not see "(.*?)"$/) do |text|
  page.should_not have_content(text)
end

Then(/^I should view the image "(.*?)"$/) do |image_path|
  page.should have_xpath("//img[contains(@src, \"#{image_path}\")]")
end

Given(/^I am on the sign in page$/) do
  visit(user_session_path)
end

When(/^I fill in "(.*?)" with "(.*?)"$/) do |field, content|
  fill_in(field, with: content)
end

When(/^I sign up$/) do
  steps %Q{
    When I go to the home page
    And I follow "Sign Up"
    And I fill in "joe@example.com" for "Email"
    And I fill in "password" for "user_password"
    And I fill in "password" for "Password confirmation"
    And I press "Sign up"
  }
end

When(/^I sign in$/) do
  steps %Q{
    When I go to the home page
    And I follow "Sign In"
    And I fill in "joe@example.com" for "Email"
    And I fill in "password" for "user_password"
    And I press "Sign in"
  }
end
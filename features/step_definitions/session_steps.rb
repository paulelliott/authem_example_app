Given /^I am signed in$/ do
  step %(I am signed in as "test@example.com")
end

Given /^I am signed in as "([^"]*)"$/ do |email|
  Fabricate(:user, email: email, password: '111', password_confirmation: '111')
  visit sign_in_path
  fill_in 'Email', with: email
  fill_in 'Password', with: '111'
  click_button 'Sign in'
end

When /^I visit the new post page$/ do
  visit new_post_path
end

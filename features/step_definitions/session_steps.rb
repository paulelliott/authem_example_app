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

When /^I change the signed in user to "([^"]*)"$/ do |arg1|
  fill_in "Change current_user to:", with: "jane@example.com"
  click_button "Submit"
end

When /^I create a new post$/ do
  visit new_post_path
  fill_in "Title", with: "Hello World"
  fill_in "Body", with: "It is a sunny day!"
  click_button "Save"
end

Then /^I should see that post created by "([^"]*)"$/ do |email|
  page.should have_xpath("//tr[contains(.,'Hello World')]//td", text: email)
end

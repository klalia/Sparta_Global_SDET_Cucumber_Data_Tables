Given("I am on the BBC home page") do
  bbc_homepage.visit_homepage
end

Given("I move to the sign in page") do
  bbc_homepage.click_sign_in_link
end

When("I proceed to register") do
  bbc_sign_in_page.click_register_link
end

When("I select I am over {int}") do |int|
  bbc_age_page.click_over_13_link
end

When("I input my DOB") do
  bbc_dob_page.input_day
  bbc_dob_page.input_month
  bbc_dob_page.input_year
  bbc_dob_page.click_continue_button
end

When(/^I input the necessary details with the password details (.*)$/) do |password|
  bbc_registration_page.input_password(password)
  bbc_registration_page.click_register_button
end

Then(/^I receive the corresponding error (.*)$/) do |error|
  expect(bbc_registration_page.get_error_message(error)).to eq error
end

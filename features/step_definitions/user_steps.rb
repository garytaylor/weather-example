Given /^I am a visitor$/ do
  remove_all_cookies      #As selenium will remember the cookies from one test to another, this must force the cookies to be removed to ensure the user is seeen as a visitor
end

When(/^I sign up via the invitation to see the weekly forecast$/) do
  click_link_or_button :css, Weather::Selectors.weekly_forecast_sign_up_call_to_action
end
Given /^I am a visitor$/ do
  remove_all_cookies      #As selenium will remember the cookies from one test to another, this must force the cookies to be removed to ensure the user is seeen as a visitor
end

When(/^I sign up via the invitation to see the weekly forecast$/) do
  within :css, Weather::Selectors.weekly_forecast_widget_results do
    click_link_or_button 'Register'
  end
  Weather::Interactions.sign_up(page)
end
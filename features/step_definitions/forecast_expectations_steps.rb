Then(/^I should see the Todays Forecast widget$/) do
  expect(page).to have_selector(:css, Weather::Selectors.todays_forecast_widget)
end

And(/^I should see the Weekly Forecast widget$/) do
  expect(page).to have_selector(:css, Weather::Selectors.weekly_forecast_widget)
end


Then(/^I should see the daily forecast for "([^"]*)"$/) do |location|
  expect(page).to have_selector(:css, Weather::Selectors.todays_forecast_widget_results)
  within Weather::Selectors.todays_forecast_widget_results do
    expect(page).to have_text(location)
  end
end

And(/^I should see an invitation to sign up or sign in to see the weekly forecast$/) do
  expect(page).to have_selector(:css, Weather::Selectors.weekly_forecast_widget_results)
  within Weather::Selectors.weekly_forecast_widget_results do
    expect(page).to have_text("Weekly forecasts are available if you sign up.  It's free and its quick")
  end
end

Then(/^I should see the weekly forecast for "([^"]*)"$/) do |location|
  expect(page).to have_selector(:css, Weather::Selectors.weekly_forecast_widget_results)
  within Weather::Selectors.weekly_forecast_widget_results do
    expect(page).to have_text(location)
  end
end

Then(/^I should see the Request Forecast widget$/) do
  expect(page).to have_selector(:css, Weather::Selectors.request_forecast_widget)
end
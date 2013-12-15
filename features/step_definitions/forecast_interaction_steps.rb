When(/^I request a forecast for "([^"]*)"$/) do |location|
  Weather::Interactions.request_forecast_for location
end
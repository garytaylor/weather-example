And(/^I should see the login bar$/) do
  expect(page).to have_selector(:css, Weather::Selectors.login_bar)
end
Feature: Weather Application Home Page
  In order to decide what I am doing for the day
  As a visitor to the application
  I want to see todays weather
  And idealy the weather for the week
  @javascript
  Scenario: A visitor visits the home page and expects to see the basics on the page
    Given I am a visitor
    And I am on the home page
    Then I should see the Request Forecast widget
    And I should see the login bar
  @javascript
  Scenario: A visitor uses the home page to get todays weather in Derby
    Given I am a visitor
    And I am on the home page
    Then I should see the Request Forecast widget
    When I request a forecast for "Derby"
    Then I should see the daily forecast for "Derby"
    And I should see an invitation to sign up or sign in to see the weekly forecast
  @javascript
  Scenario: A visitor uses the home page to get the weeks forecast and is guided through the sign up process
    Given I am a visitor
    And I am on the home page
    Then I should see the Todays Forecast widget
    And I should see the Weekly Forecast widget
    When I request a forecast for "Derby"
    Then I should see the daily forecast for "Derby"
    And I should see an invitation to sign up or sign in to see the weekly forecast
    When I sign up via the invitation to see the weekly forecast
    Then I should see the weekly forecast for "Derby"
    And I should see the daily forecast for "Derby"
